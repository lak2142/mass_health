class CreateTownHealthRecords < ActiveRecord::Migration
  def change
    create_table :town_health_records do |t|
    	t.string :geography, null: false
    	t.integer :total_pop_year_2005, null: false
    	t.integer :pop_age_0_to_19_year_2005, null: false
    	t.integer :pop_age_65_plus_year_2005, null: false
    	t.integer :per_capita_income_year_2000, null: false
    	t.integer :pop_under_200_percent_poverty_year_2000, null: false
    	t.decimal :percent_of_population_under_200_percent_poverty_year_2000, null: false
    	t.decimal :percent_adequacy_prenatal_care, null: false
    	t.decimal :percent_c_section_2005_to_2008, null: false
    	t.integer :number_infant_deaths_2005_to_2008, null: false
    	t.decimal :infant_mortality_rate_2005_to_2008, null: false
    	t.decimal :percent_low_birthweight_2005_to_2008, null: false
    	t.decimal :percent_multiple_births_2005_to_2008, null: false
    	t.decimal :percent_publicly_financed_prenatal_care_2005_to_2008, null: false
    	t.decimal :percent_teen_births_2005_to_2008, null: false
    	


      t.timestamps
    end
  end
end
