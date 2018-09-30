class StockSerializer < ActiveModel::Serializer
  attributes :id, :company_name, :logo, :ceo, :description, :sector, :industry, :website, :market_cap, :symbol, :price, :shares, :buy_in_price, :revenue, :gross_profit, :ebitda, :ytd_change_percent, :year_5_change_percent
end