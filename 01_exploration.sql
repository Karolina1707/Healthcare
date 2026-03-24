-- EN: Initial data exploration: row count, gender distribution, 
-- diagnosis breakdown, date range and NULL check across all columns.
-- PL: Eksploracja danych: liczba wierszy, rozkład płci, 
-- rozkład diagnoz, zakres dat i sprawdzenie NULLi we wszystkich kolumnach.
SELECT
COUNT(1) as row_numbers
FROM healthcare_dataset hd

SELECT
count(*) as mezczyzni
FROM healthcare_dataset
WHERE gender = "Male";

SELECT
count(*) as kobiety
FROM healthcare_dataset
WHERE gender = "Female";

SELECT "Admission Type",
    COUNT(*) AS liczba_pacjentow
FROM healthcare_dataset
GROUP BY "Admission Type"
ORDER BY liczba_pacjentow DESC;

SELECT
COUNT(Name) as nazwisko,
COUNT (Age) as wiek,
COUNT (Gender) as płec,
COUNT ('Blood Type') as grupa_krwi,
COUNT ('Medical Condition') as choroba,
COUNT ('Date of Admission') as data,
COUNT (Doctor) as lekarz,
COUNT (Hospital) as szpital,
COUNT ('Insurance Provider') as ubezpieczyciel,
COUNT ('Billing Amount') as rachunek,
COUNT ('Room Number') as pokój,
COUNT ('Admission Type') as tryb,
COUNT ('Discharge Date') as wypis,
COUNT (Medication) as leki,
COUNT ('Test results') as wyniki
FROM healthcare_dataset hd;
