# This file should contain all the record creation needed to seed the database with its default values.
require 'csv'
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
    	# t.string :geography, null: false
    	# t.integer :total_pop_year_2005, null: false
    	# t.integer :pop_age_0_to_19_year_2005, null: false
    	# t.integer :pop_age_65_plus_year_2005, null: false
    	# t.integer :per_capita_income_year_2000, null: false
    	# t.integer :pop_under_200_percent_poverty_year_2000, null: false
    	# t.decimal :percent_of_population_under_200_percent_poverty_year_2000, null: false
    	# t.decimal :percent_adequacy_prenatal_care, null: false
    	# t.decimal :percent_c_section_2005_to_2008, null: false
    	# t.integer :number_infant_deaths_2005_to_2008, null: false
    	# t.decimal :infant_mortality_rate_2005_to_2008, null: false
    	# t.decimal :percent_low_birthweight_2005_to_2008, null: false
    	# t.decimal :percent_multiple_births_2005_to_2008, null: false
    	# t.decimal :percent_publicly_financed_prenatal_care_2005_to_2008, null: false
    	# t.decimal :percent_teen_births_2005_to_2008, null: false


   #read csv

   def strip_chars_to_f(string)
    s = string.tr(",$", "").to_f
    puts s
    s


   end

   datafile = Rails.root + "db/data/mass_health_data.csv"

   CSV.foreach(datafile, headers: true) do |row| 
    # next if row["Geography"] == ""
    exit if row["Geography"] == "Massachusetts Total"
    # next if row["Geography"] == ""

    # TownHealthRecord.find_or_initialize_by({geography: row['Geography']}) do |thr|
    #     geography: row["Geography"],
    #     total_pop_year_2005: strip_chars_to_f(row["total pop, year 2005"]),
    #     pop_age_0_to_19_year_2005: strip_chars_to_f(row["age 0-19, year 2005"]),
    #     pop_age_65_plus_year_2005: strip_chars_to_f(row["age 65+, year 2005"]),
    #     per_capita_income_year_2000: strip_chars_to_f(row["Per Capita Income, year 2000"]),
    #     pop_under_200_percent_poverty_year_2000: strip_chars_to_f(row["Persons Living Below 200% Poverty, year 2000 "]),
    #     percent_of_population_under_200_percent_poverty_year_2000: strip_chars_to_f(row["% all Persons Living Below 200% Poverty Level, year 2000"]),
    #     percent_adequacy_prenatal_care: strip_chars_to_f(row["% adequacy prenatal care (kotelchuck)"]),
    #     percent_c_section_2005_to_2008: strip_chars_to_f(row["% C-section deliveries, 2005-2008"]),
    #     number_infant_deaths_2005_to_2008: strip_chars_to_f(row["Number of infant deaths, 2005-2008"]),
    #     infant_mortality_rate_2005_to_2008: strip_chars_to_f(row["Infant mortality rate (deaths per 1000 live births), 2005-2008"]),
    #     percent_low_birthweight_2005_to_2008: strip_chars_to_f(row["% low birthweight 2005-2008"]),
    #     percent_multiple_births_2005_to_2008: strip_chars_to_f(row["% multiple births, 2005-2008"]),
    #     percent_publicly_financed_prenatal_care_2005_to_2008: strip_chars_to_f(row["% publicly financed prenatal care, 2005-2008"]),
    #     percent_teen_births_2005_to_2008: strip_chars_to_f(row["% teen births, 2005-2008"])

    #     )
    # end

        thr = TownHealthRecord.find_or_initialize_by({geography: row['Geography']}) 
        # geography: row["Geography"],
        thr.total_pop_year_2005 = strip_chars_to_f(row["total pop, year 2005"])
        thr.pop_age_0_to_19_year_2005 = strip_chars_to_f(row["age 0-19, year 2005"])
        thr.pop_age_65_plus_year_2005 = strip_chars_to_f(row["age 65+, year 2005"])
        thr.per_capita_income_year_2000 = strip_chars_to_f(row["Per Capita Income, year 2000"])
        thr.pop_under_200_percent_poverty_year_2000 = strip_chars_to_f(row["Persons Living Below 200% Poverty, year 2000 "])
        thr.percent_of_population_under_200_percent_poverty_year_2000 = strip_chars_to_f(row["% all Persons Living Below 200% Poverty Level, year 2000"])
        thr.percent_adequacy_prenatal_care = strip_chars_to_f(row["% adequacy prenatal care (kotelchuck)"])
        thr.percent_c_section_2005_to_2008 = strip_chars_to_f(row["% C-section deliveries, 2005-2008"])
        thr.number_infant_deaths_2005_to_2008 = strip_chars_to_f(row["Number of infant deaths, 2005-2008"])
        thr.infant_mortality_rate_2005_to_2008 = strip_chars_to_f(row["Infant mortality rate (deaths per 1000 live births), 2005-2008"])
        thr.percent_low_birthweight_2005_to_2008 = strip_chars_to_f(row["% low birthweight 2005-2008"])
        thr.percent_multiple_births_2005_to_2008 = strip_chars_to_f(row["% multiple births, 2005-2008"])
        thr.percent_publicly_financed_prenatal_care_2005_to_2008 = strip_chars_to_f(row["% publicly financed prenatal care, 2005-2008"])
        thr.percent_teen_births_2005_to_2008 = strip_chars_to_f(row["% teen births, 2005-2008"])
        thr.save!
    

    # TownHealthRecord.find_or_create_by(
    #     geography: row["Geography"],
    #     total_pop_year_2005: strip_chars_to_f(row["total pop, year 2005"]),
    #     pop_age_0_to_19_year_2005: strip_chars_to_f(row["age 0-19, year 2005"]),
    #     pop_age_65_plus_year_2005: strip_chars_to_f(row["age 65+, year 2005"]),
    #     per_capita_income_year_2000: strip_chars_to_f(row["Per Capita Income, year 2000"]),
    #     pop_under_200_percent_poverty_year_2000: strip_chars_to_f(row["Persons Living Below 200% Poverty, year 2000 "]),
    #     percent_of_population_under_200_percent_poverty_year_2000: strip_chars_to_f(row["% all Persons Living Below 200% Poverty Level, year 2000"]),
    #     percent_adequacy_prenatal_care: strip_chars_to_f(row["% adequacy prenatal care (kotelchuck)"]),
    #     percent_c_section_2005_to_2008: strip_chars_to_f(row["% C-section deliveries, 2005-2008"]),
    #     number_infant_deaths_2005_to_2008: strip_chars_to_f(row["Number of infant deaths, 2005-2008"]),
    #     infant_mortality_rate_2005_to_2008: strip_chars_to_f(row["Infant mortality rate (deaths per 1000 live births), 2005-2008"]),
    #     percent_low_birthweight_2005_to_2008: strip_chars_to_f(row["% low birthweight 2005-2008"]),
    #     percent_multiple_births_2005_to_2008: strip_chars_to_f(row["% multiple births, 2005-2008"]),
    #     percent_publicly_financed_prenatal_care_2005_to_2008: strip_chars_to_f(row["% publicly financed prenatal care, 2005-2008"]),
    #     percent_teen_births_2005_to_2008: strip_chars_to_f(row["% teen births, 2005-2008"])

    #     )



    puts row
    end

   

  #  TownHealthRecord.create({
		# geography: row["Geography"],
  #   	total_pop_year_2005: row["total pop, year 2005"]
  #   	pop_age_0_to_19_year_2005: row["age 0-19, year 2005"]
  #   	pop_age_65_plus_year_2005: row["age 65+, year 2005"]
  #   	per_capita_income_year_2000: row["Per Capita Income, year 2000"]
  #   	pop_under_200_percent_poverty_year_2000: row["Persons Living Below 200% Poverty, year 2000 "]
  #   	percent_of_population_under_200_percent_poverty_year_2000: row["% all Persons Living Below 200% Poverty Level, year 2000"]
  #   	percent_adequacy_prenatal_care: row["% adequacy prenatal care (kotelchuck)"]
  #   	percent_c_section_2005_to_2008: row["% C-section deliveries, 2005-2008"]
  #   	number_infant_deaths_2005_to_2008: row["Number of infant deaths, 2005-2008"]
  #   	infant_mortality_rate_2005_to_2008: row["Infant mortality rate (deaths per 1000 live births), 2005-2008"]
  #   	percent_low_birthweight_2005_to_2008: row["% low birthweight 2005-2008"]
  #   	percent_multiple_births_2005_to_2008: row["% multiple births, 2005-2008"]
  #   	percent_publicly_financed_prenatal_care_2005_to_2008: row["% publicly financed prenatal care, 2005-2008"]
  #   	percent_teen_births_2005_to_2008: row["% teen births, 2005-2008"]

  #  	})