# Healthcare
SQL analysis of Healtcare db
# Healthcare Patient Analysis (SQL)
# Analiza Danych Pacjentów Szpitalnych (SQL)

---

## English Version

### Project Description

SQL analysis of a healthcare dataset containing 55,500 patient records from 2019 to 2024.  
The goal was to identify patterns in hospitalization duration, treatment costs, patient profiles, and readmission rates — translating medical data into actionable business insights.

This project was created as part of my transition into a data analyst role, leveraging my background in biology and physiology.

### Tools

- SQL (SQLite)
- DBeaver
- GitHub

### SQL Skills Demonstrated

- Aggregations: `COUNT`, `AVG`, `ROUND`, `MIN`, `MAX`
- Grouping & filtering: `GROUP BY`, `HAVING`, `WHERE`
- Conditional logic: `CASE WHEN`
- Window functions: `LAG()`, `RANK()`, `PARTITION BY`
- Date functions: `STRFTIME()`, `JULIANDAY()`
- CTEs: `WITH cte AS (...)`, including multi-level CTEs

### Dataset

- Source: [Kaggle — Healthcare Dataset by prasad22](https://www.kaggle.com/datasets/prasad22/healthcare-dataset)
- 55,500 records, 15 columns, no missing values
- Date range: May 2019 – May 2024
- Note: The dataset is synthetic, which results in an unusually even distribution across diagnoses, admission types, and insurance providers.

### Repository Structure

```
sql/
├── 01_exploration.sql          -- row count, gender split, diagnosis distribution, date range, NULL check
├── 02_hospitalisation.sql      -- length of stay by diagnosis and age group
├── 03_costs.sql                -- billing analysis by diagnosis, age group, and admission type
├── 04_patient_profile.sql      -- patient segmentation by admission type, diagnosis, and cost
├── 05_time_trends.sql          -- monthly and yearly admissions and billing trends
├── 06_insurance.sql            -- costs and admission types by insurance provider
└── 07_readmission.sql          -- readmission analysis using LAG() and multi-level CTEs
```

### Key Insights

**Exploration**
- Dataset contains 55,500 records with no NULL values across all 15 columns.
- 6 diagnoses with near-equal distribution (~9,200 patients each), confirming synthetic data.
- Admission types (Elective, Urgent, Emergency) are evenly distributed (~18,500 each).
- Data spans May 2019 to May 2024.

**Hospitalization**
- Asthma patients have the longest average stay (15.7 days), diabetes the shortest (15.4 days) — differences are minimal due to synthetic data.
- Patients aged 65+ have slightly longer stays than younger groups.
- Children under 18 with diabetes and hypertension show the highest average stay (16.6 days), but this group is small (140–159 patients), limiting the strength of conclusions.

**Costs**
- Obesity generates the highest average billing amount (25,806 PLN), cancer the lowest (25,162 PLN).
- Hypertension in patients under 18 generates the highest average cost by age group, though sample size is small.
- Diabetes patients admitted electively generate the highest costs among all diagnosis–admission type combinations (25,983 PLN).

**Patient Profile**
- The largest patient group is diabetes patients admitted urgently (3,229 patients).
- The most expensive combination is diabetes + Elective admission.

**Time Trends**
- 2020 had the highest number of admissions (11,285) — coinciding with the COVID-19 pandemic period.
- 2019 had the highest average billing amount (25,700 PLN) despite fewer patients.
- Peak monthly costs: October 2023 (26,759 PLN); lowest: March 2023 (24,367 PLN).
- Peak admissions by diagnosis: Arthritis and Asthma in August 2019; Diabetes in January 2022.

**Insurance**
- Cigna patients admitted electively generate the highest average costs (26,014 PLN).
- UnitedHealthcare patients admitted urgently have the lowest average costs (25,137 PLN).
- All insurance provider groups have comparable sample sizes (3,500–3,800), making comparisons reliable.

**Readmission**
- Patients who returned to hospital did so on average after 464 days (~15 months) from their previous visit.
- Analysis performed using `LAG()` window function with `PARTITION BY LOWER(Name)` to account for inconsistent name capitalization in the dataset.

### Notes

- The dataset is synthetic. Distributions are unusually even, which limits the strength of business conclusions but makes the dataset ideal for practicing SQL logic.
- Small sample sizes in the 0–18 age group should be interpreted with caution.

---

## Wersja Polska

### Opis Projektu

Analiza SQL zbioru danych medycznych zawierającego 55 500 rekordów pacjentów z lat 2019–2024.  
Celem było zidentyfikowanie wzorców w czasie hospitalizacji, kosztach leczenia, profilach pacjentów i readmisjach — przekształcając dane medyczne w wnioski biznesowe.

Projekt wykonany w ramach przebranżowienia na stanowisko data analyst, z wykorzystaniem background'u w biologii i fizjologii.

### Narzędzia

- SQL (SQLite)
- DBeaver
- GitHub

### Zakres Analizy

- Eksploracja danych: rozkład diagnoz, płci, typów przyjęć, zakres dat, sprawdzenie NULLi
- Czas hospitalizacji według diagnozy i grupy wiekowej
- Analiza kosztów według diagnozy, grupy wiekowej i trybu przyjęcia
- Segmentacja pacjentów według trybu przyjęcia i diagnozy
- Trendy czasowe: miesięczne i roczne liczby przyjęć oraz koszty
- Analiza kosztów według ubezpieczyciela
- Analiza readmisji z użyciem funkcji okna `LAG()` i wielopoziomowych CTE

### Kluczowe Wnioski

- Najdłuższy średni pobyt: astma (15,7 dni); najkrótszy: cukrzyca (15,4 dni)
- Najwyższe średnie koszty: otyłość (25 806 PLN); najniższe: rak (25 162 PLN)
- Rok 2020 miał najwięcej przyjęć (11 285) — okres pandemii COVID-19
- Pacjenci powracający do szpitala wracali średnio po 464 dniach (~15 miesięcy)
- Dataset ma charakter syntetyczny — rozkłady są wyjątkowo równomierne

### Uwagi

- Analiza ma charakter eksploracyjny i opiera się na syntetycznym zbiorze danych.
- Wyniki dla grupy wiekowej 0–18 należy interpretować ostrożnie ze względu na małą liczebność próby.
