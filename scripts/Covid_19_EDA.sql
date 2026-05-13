/*
Purpose:
This script performs exploratory data analysis (EDA) on COVID-19 data using the CovidDeaths 
and CovidVaccinations tables. It analyzes infection trends, death rates, and vaccination 
progress globally and specifically for Algeria, while also identifying countries and continents 
with the highest impact.
*/

-- Base information: general dataset overview
SELECT
	location,
	date,
	population,
	new_cases,
	total_cases,
	new_deaths,
	total_deaths
FROM dbo.CovidDeaths
WHERE location IS NOT NULL
ORDER BY location, date;


-- First and last reported case dates in Algeria
SELECT
	location,
	MIN(date) AS first_case,
	MAX(date) AS last_case
FROM dbo.CovidDeaths
WHERE location LIKE '%Algeria%'
GROUP BY location;


-- Running average of daily cases and deaths in Algeria
SELECT
	location,
	date,
	new_cases,
	ROUND(AVG(CAST(new_cases AS FLOAT)) OVER(ORDER BY date), 2) AS avg_daily_cases,
	new_deaths,
	ROUND(AVG(CAST(new_deaths AS FLOAT)) OVER(ORDER BY date), 2) AS avg_daily_deaths
FROM dbo.CovidDeaths
WHERE location LIKE '%Algeria%';


-- Death rate (percentage) relative to total cases in Algeria
SELECT
	location,
	date,
	population,
	total_cases,
	total_deaths,
	ROUND((CAST(total_deaths AS FLOAT) / total_cases) * 100, 2) AS deaths_percent
FROM dbo.CovidDeaths
WHERE location LIKE '%Algeria%'
ORDER BY location, date;


-- Infection rate (percentage) relative to population in Algeria
SELECT
	location,
	date,
	population,
	total_cases,
	(CAST(total_cases AS FLOAT) / population) * 100 AS people_infected_percent
FROM dbo.CovidDeaths
WHERE location LIKE '%Algeria%'
ORDER BY location, date;


-- Countries with the highest infection rate (relative to population)
SELECT
	location,
	MAX(total_cases) AS highest_total_cases,
	MAX((CAST(total_cases AS FLOAT) / population) * 100) AS highest_infection_rate
FROM dbo.CovidDeaths
WHERE location IS NOT NULL
GROUP BY location
ORDER BY highest_infection_rate DESC;


-- Countries with the highest total deaths
SELECT
	location,
	MAX(total_deaths) AS highest_total_deaths
FROM dbo.CovidDeaths
WHERE location IS NOT NULL
GROUP BY location
ORDER BY highest_total_deaths DESC;


-- Continents with the highest total deaths
SELECT
	continent,
	MAX(total_deaths) AS highest_total_deaths
FROM dbo.CovidDeaths
GROUP BY continent
ORDER BY highest_total_deaths DESC;


-- Global daily totals and real-time death rate
SELECT
	date,
	SUM(new_cases) AS total_cases_per_day,
	SUM(new_deaths) AS total_deaths_per_day,
	ROUND(
		(SUM(CAST(new_deaths AS FLOAT)) / NULLIF(SUM(new_cases), 0)) * 100,
		2
	) AS real_time_death_rate
FROM dbo.CovidDeaths
WHERE continent LIKE '%WORLD%'  -- Filters aggregated global data
GROUP BY date
ORDER BY date;


-- Vaccination progress: percentage of population vaccinated per location
SELECT
	cd.location,
	cd.date,
	cd.population,
	cv.people_vaccinated,
	(CAST(cv.people_vaccinated AS FLOAT) / cd.population) * 100 AS total_percent_vaccinated
FROM dbo.CovidDeaths AS cd
INNER JOIN dbo.CovidVaccinations AS cv
	ON cd.location = cv.location 
	AND cd.date = cv.date
WHERE cv.people_vaccinated IS NOT NULL
ORDER BY cd.date DESC, total_percent_vaccinated DESC;