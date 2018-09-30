class CreateStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :stocks do |t|
    	t.belongs_to :holding, foreign_key: true
	    t.string "company_name"
	    t.string "logo"
	    t.string "ceo"
	    t.string "description"
	    t.string "sector"
	    t.string "industry"
	    t.string "website"
	    t.decimal "market_cap"
	    t.string "symbol"
	    t.decimal "price"
	    t.decimal "shares"
	    t.decimal "buy_in_price"
	    t.decimal "revenue"
	    t.decimal "gross_profit"
	    t.decimal "ebitda"
	    t.decimal "ytd_change_percent"
	    t.decimal "year_5_change_percent"  	
    end
  end
end
