# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'bigdecimal'

Microsoft = IEX::Resources::Company.get('MSFT') #Basic information such as ceo, company_name, description, industry, sector, symbol, website
Microsoft_Key_Stats = IEX::Resources::KeyStats.get('MSFT')
Microsoft_Price = IEX::Resources::Price.get('MSFT')
Microsoft_Logo = IEX::Resources::Logo.get('MSFT')



#GP
DonSean = GeneralPartner.create(name:"Don Sean", aum:500000000000, alma_mater:"University of Chicago Booth School of Business", net_worth: 80000000000, background: "The Don", picture_url:"https://i.dailymail.co.uk/i/pix/2014/08/01/article-2713150-0692644D00000514-711_634x423.jpg")


#Viking Holding
Viking = Holding.create(general_partner: DonSean, holding_name: "Viking",sector: "Technology", controlling_interests: ["MSFT"], total_holding_assets: 300000000000)

# Create MSFT Shares
OwnMicrosoft = Stock.create(
	holding: Viking, company_name: Microsoft.company_name, ceo: Microsoft.ceo, 
	description: Microsoft.description, sector: Microsoft.sector, industry: Microsoft.industry, 
	website: Microsoft.website, logo: Microsoft_Logo.url, market_cap: Microsoft_Key_Stats.market_cap, symbol: Microsoft_Key_Stats.symbol,  
	price: Microsoft_Price, shares: 3000000000, buy_in_price: 100, revenue: Microsoft_Key_Stats.revenue,
	gross_profit: Microsoft_Key_Stats.gross_profit, ebitda: Microsoft_Key_Stats.ebitda, ytd_change_percent: Microsoft_Key_Stats.ytd_change_percent,
	year_5_change_percent: Microsoft_Key_Stats.year_5_change_percent)