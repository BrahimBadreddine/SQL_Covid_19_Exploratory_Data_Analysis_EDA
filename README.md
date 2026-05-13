# 🧾 COVID-19 Exploratory Data Analysis (EDA)

🌐 Language / Langue  
- English  
- Français  

---

<details>
<summary>🇬🇧 English Version</summary>

## 🌍 Overview

This document explains the business logic and insights derived from an exploratory analysis of global COVID-19 data.  
The goal of this analysis is to understand how the pandemic evolved across different countries and continents, with a special focus on **Algeria**, while tracking:

- Infection trends  
- Death impact  
- Population exposure  
- Vaccination progress  
- Global comparisons  

This is written for non-technical readers, so no SQL or technical terms are required.

---

## 📊 What This Analysis Does

The analysis transforms raw COVID-19 records into meaningful insights by answering key questions such as:

- How did COVID-19 spread over time?
- Which countries were most affected?
- What was the risk of death compared to infections?
- How many people were infected compared to total population?
- How fast were vaccinations progressing?

---

## 🇩🇿 Algeria-Focused Insights

A major part of the analysis focuses on Algeria to understand the local pandemic evolution.

### 📅 Pandemic Timeline in Algeria
- Identifies the **first recorded COVID-19 case**
- Identifies the **latest recorded update**
- Helps understand how long the country was actively impacted

### 📈 Daily Trend Behavior
- Tracks how cases and deaths changed day by day
- Calculates a **moving average** to smooth fluctuations and show real trends

### ⚰️ Death Impact (Severity)
- Measures the percentage of confirmed cases that resulted in death
- Helps understand how deadly the virus was over time

### 🧑‍🤝‍🧑 Population Infection Level
- Measures what percentage of the population was infected
- Shows how widely the virus spread in the country

---

## 🌎 Global Comparison Insights

This section compares countries worldwide to identify which areas were most impacted.

### 🦠 Highest Infection Rates by Country
- Identifies countries where the virus affected the largest share of the population
- Helps highlight countries with widespread transmission

### ⚰️ Highest Total Deaths by Country
- Shows which countries recorded the highest number of deaths overall
- Helps understand where the pandemic had the most severe human impact

---

## 🌍 Continental Impact Analysis

### 🏔️ Death Impact by Continent
- Aggregates data by continent
- Identifies which regions experienced the highest death tolls
- Helps compare large geographic areas instead of individual countries

---

## 🌐 Global Daily Pandemic Trends

### 📊 Key Metrics
- Total new cases reported globally per day
- Total new deaths reported globally per day
- Daily **death rate**, calculated as:

> Death Rate = (Daily Deaths ÷ Daily Cases) × 100

### 📌 Purpose
This helps answer:
- Is the pandemic getting better or worse over time?
- Are death rates increasing or decreasing globally?

---

## 💉 Vaccination Progress Analysis

### 📍 Key Insights
- Tracks number of vaccinated people per location over time
- Compares vaccinated population against total population
- Calculates vaccination coverage percentage:

> Vaccination Rate = (People Vaccinated ÷ Total Population) × 100

### 📌 Why it matters
- Shows which countries are protecting their populations faster
- Helps measure recovery progress from the pandemic

---

## 🧠 Key Business Rules Used in This Analysis

### 1. Data Consistency Rule
- Only valid location and date entries are considered
- Missing or null values are excluded where necessary

### 2. Time-Based Analysis Rule
- Trends are always analyzed in chronological order
- This ensures accurate understanding of progression over time

### 3. Percentage-Based Comparisons
To fairly compare countries of different sizes:
- Infection rate is measured relative to population
- Death rate is measured relative to total cases
- Vaccination rate is measured relative to population

### 4. Aggregation Logic
- Countries and continents are grouped to compare overall impact
- Maximum values are used to identify peak impact levels

### 5. Global Data Separation
- Global results are filtered separately to avoid mixing with country-level data
- Ensures clarity between worldwide and local trends

---

## 📌 Key Takeaways

- COVID-19 impact varies significantly between countries and continents  
- Algeria shows clear infection and recovery trends over time  
- Death rates provide insight into severity, not just spread  
- Population-based percentages are essential for fair comparisons  
- Vaccination progress is a key indicator of recovery strength globally  

---

## 📁 Purpose of This Document

This README serves to:
- Explain analytical logic in simple language  
- Document business rules behind calculations  
- Help stakeholders understand COVID-19 trends without technical knowledge  
- Provide clear interpretation of global and local pandemic behavior  

</details>

---

<details>
<summary>🇫🇷 Version en français</summary>

## 🌍 Vue d’ensemble

Ce document explique la logique métier et les insights issus d’une analyse exploratoire des données mondiales sur le COVID-19.  
L’objectif est de comprendre comment la pandémie a évolué à travers les pays et les continents, avec un focus sur **l’Algérie**, en suivant :

- L’évolution des infections  
- L’impact des décès  
- L’exposition de la population  
- L’avancement de la vaccination  
- Les comparaisons mondiales  

Ce document est écrit pour un public non technique, sans SQL ni termes techniques.

---

## 📊 Ce que fait cette analyse

Cette analyse transforme les données brutes du COVID-19 en informations utiles en répondant aux questions suivantes :

- Comment le COVID-19 s’est-il propagé dans le temps ?
- Quels pays ont été les plus touchés ?
- Quel était le risque de décès par rapport aux infections ?
- Quelle part de la population a été infectée ?
- À quelle vitesse la vaccination a progressé ?

---

## 🇩🇿 Analyse centrée sur l’Algérie

Une grande partie de l’analyse est dédiée à l’Algérie afin de comprendre l’évolution locale de la pandémie.

### 📅 Chronologie de la pandémie en Algérie
- Identification du **premier cas de COVID-19**
- Identification de la **dernière mise à jour enregistrée**
- Compréhension de la durée de l’impact du pays

### 📈 Évolution quotidienne
- Suivi de l’évolution des cas et des décès jour par jour
- Calcul d’une **moyenne mobile** pour lisser les variations

### ⚰️ Impact des décès (gravité)
- Mesure du pourcentage de cas ayant entraîné un décès
- Permet d’évaluer la gravité du virus dans le temps

### 🧑‍🤝‍🧑 Niveau d’infection de la population
- Mesure du pourcentage de la population infectée
- Montre l’ampleur de la propagation du virus

---

## 🌎 Analyse comparative mondiale

Cette section compare les pays du monde afin d’identifier les zones les plus touchées.

### 🦠 Taux d’infection les plus élevés
- Identification des pays avec la plus grande proportion de population infectée
- Mise en évidence des pays fortement exposés

### ⚰️ Nombre total de décès le plus élevé
- Identification des pays avec le plus grand nombre de décès
- Compréhension de l’impact humain global

---

## 🌍 Analyse par continent

### 🏔️ Impact des décès par continent
- Regroupement des données par continent
- Identification des régions les plus touchées
- Comparaison des grandes zones géographiques

---

## 🌐 Tendances mondiales quotidiennes

### 📊 Indicateurs clés
- Nombre total de nouveaux cas par jour
- Nombre total de nouveaux décès par jour
- Taux de mortalité quotidien :

> Taux de mortalité = (Décès quotidiens ÷ Cas quotidiens) × 100

### 📌 Objectif
Comprendre :
- Si la situation mondiale s’améliore ou s’aggrave
- L’évolution du taux de mortalité dans le temps

---

## 💉 Analyse de la vaccination

### 📍 Points clés
- Suivi du nombre de personnes vaccinées par zone
- Comparaison avec la population totale
- Calcul du taux de vaccination :

> Taux de vaccination = (Personnes vaccinées ÷ Population totale) × 100

### 📌 Importance
- Identifier les pays les plus avancés dans la vaccination
- Mesurer la progression vers la reprise normale

---

## 🧠 Règles métier principales

### 1. Cohérence des données
- Seules les données valides sont utilisées
- Les valeurs manquantes sont ignorées si nécessaire

### 2. Analyse temporelle
- Les tendances sont analysées dans l’ordre chronologique
- Garantit une lecture correcte de l’évolution

### 3. Comparaisons en pourcentage
Pour comparer équitablement les pays :
- Taux d’infection basé sur la population
- Taux de mortalité basé sur les cas
- Taux de vaccination basé sur la population

### 4. Logique d’agrégation
- Regroupement par pays et continents
- Utilisation des valeurs maximales pour identifier les pics

### 5. Séparation des données mondiales
- Les données mondiales sont séparées des données pays
- Permet une analyse claire et non mélangée

---

## 📌 Points clés

- L’impact du COVID-19 varie fortement selon les pays et continents  
- L’Algérie montre des tendances claires d’évolution  
- Le taux de mortalité reflète la gravité du virus  
- Les pourcentages permettent des comparaisons équitables  
- La vaccination indique le niveau de reprise mondiale  

---

## 📁 Objectif du document

Ce README permet de :
- Expliquer la logique d’analyse simplement  
- Documenter les règles métier utilisées  
- Aider les non-techniciens à comprendre les données COVID-19  
- Donner une vision claire de la pandémie mondiale et locale  

</details>

---

## 📌 Author
**BRAHIM BADREDDINE**
