--What 3 towns have the highest population of citizens that are 65 years and older?
SELECT geography FROM town_health_records ORDER BY pop_age_65_plus_year_2005 DESC LIMIT 3;
TownHealthRecord.select(:geography).order("pop_age_65_plus_year_2005 DESC").limit(3)

--Boston
-- Worcester
-- Springfield

--What 3 towns have the highest population of citizens that are 19 years and younger?
SELECT geography FROM town_health_records ORDER BY pop_age_0_to_19_year_2005 LIMIT 3;
TownHealthRecord.select(:geography).order(pop_age_0_to_19_year_2005: :desc).limit(3)
-- Boston
-- Worcester
-- Springfield

--What 5 towns have the lowest per capita income?
SELECT geography FROM town_health_records ORDER BY per_capita_income_year_2000 ASC LIMIT 5;
TownHealthRecord.select(:geography).order(per_capita_income_year_2000: :asc).limit(5)
-- Monroe
-- Lawrence
-- Chelsea
-- Springfield
-- Gosnold


--Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?
SELECT geography FROM town_health_records WHERE geography != 'Boston' || geography != 'Becket' || geography != 'Beverly' ORDER BY percent_teen_births_2005_to_2008 DESC LIMIT 1;
TownHealthRecord.select(:geography).where.not("geography LIKE '%Boston%' || '%Becket%' || '%Beverly%'").order(percent_teen_births_2005_to_2008: :desc).limit(1)
-- Holyoke


--Omitting Boston, what town has the highest number of infant mortalities?
SELECT geography FROM town_health_records WHERE geography != 'Boston' ORDER BY infant_mortality_rate_2005_to_2008 DESC LIMIT 1;
TownHealthRecord.select(:geography).where.not("geography LIKE '%Boston%'").order(infant_mortality_rate_2005_to_2008: :desc).limit(1)
--Gardener
