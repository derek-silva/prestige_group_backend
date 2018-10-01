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



#AAPL, GOOG, FB, TSLA, AMZN

#JNJ, PFE, PG
JNJ = IEX::Resources::Company.get('JNJ')
JNJ_Key_Stats = IEX::Resources::KeyStats.get('JNJ')
JNJ_Price = IEX::Resources::Price.get('JNJ')
JNJ_Logo = IEX::Resources::Logo.get('JNJ')


PFE = IEX::Resources::Company.get('PFE')
PFE_Key_Stats = IEX::Resources::KeyStats.get('PFE')
PFE_Price = IEX::Resources::Price.get('PFE')
PFE_Logo = IEX::Resources::Logo.get('PFE')

PROCGAMB = IEX::Resources::Company.get('PG')
PROCGAMB_Key_Stats = IEX::Resources::KeyStats.get('PG')
PROCGAMB_Price = IEX::Resources::Price.get('PG')
PROCGAMB_Logo = IEX::Resources::Logo.get('PG')


AAPL = IEX::Resources::Company.get('AAPL')
AAPL_Key_Stats = IEX::Resources::KeyStats.get('AAPL')
AAPL_Price = IEX::Resources::Price.get('AAPL')
AAPL_Logo = IEX::Resources::Logo.get('AAPL')


GOOG = IEX::Resources::Company.get('GOOG')
GOOG_Key_Stats = IEX::Resources::KeyStats.get('GOOG')
GOOG_Price = IEX::Resources::Price.get('GOOG')
GOOG_Logo = IEX::Resources::Logo.get('GOOG')

FB = IEX::Resources::Company.get('FB')
FB_Key_Stats = IEX::Resources::KeyStats.get('FB')
FB_Price = IEX::Resources::Price.get('FB')
FB_Logo = IEX::Resources::Logo.get('FB')

TSLA = IEX::Resources::Company.get('TSLA')
TSLA_Key_Stats = IEX::Resources::KeyStats.get('TSLA')
TSLA_Price = IEX::Resources::Price.get('TSLA')
TSLA_Logo = IEX::Resources::Logo.get('TSLA')

AMZN = IEX::Resources::Company.get('AMZN')
AMZN_Key_Stats = IEX::Resources::KeyStats.get('AMZN')
AMZN_Price = IEX::Resources::Price.get('AMZN')
AMZN_Logo = IEX::Resources::Logo.get('AMZN')

WELL = IEX::Resources::Company.get('WELL')
WELL_Key_Stats = IEX::Resources::KeyStats.get('WELL')
WELL_Price = IEX::Resources::Price.get('WELL')
WELL_Logo = IEX::Resources::Logo.get('WELL')


#GP
DonSean = GeneralPartner.create(name:"Don Sean", aum:500000000000, alma_mater:"University of Chicago Booth School of Business", net_worth: 80000000000, background: "The Don", picture_url:"https://i.dailymail.co.uk/i/pix/2014/08/01/article-2713150-0692644D00000514-711_634x423.jpg")

NancyDo = GeneralPartner.create(name:"Nancy Do", aum:800000000000, alma_mater:"University of Texas at Austin", net_worth: 100000000000, background: "Oops I did it again..", picture_url:"http://images2.fanpop.com/images/photos/3200000/Young-Britney-Spears-stars-childhood-pictures-3279537-1024-768.jpg")

JordanBelfort = GeneralPartner.create(name:"Jordan Belfort", aum:100000000000, alma_mater:"University of Wall Street", net_worth: 7000000000000, background: "Blah Blah Blah", picture_url:"http://grupobcc.com/wp/wp-content/uploads/2015/05/jordan-belfort-keynote-speaker-e1432910384581.jpg")

DerekSilva = GeneralPartner.create(name:"Derek Silva", aum:400000000000, alma_mater:"University of Houston", net_worth: 7000000000000, background: "I am Derek.", picture_url:"https://timedotcom.files.wordpress.com/2014/11/jay-z.jpg")


#Viking Holding
Viking = Holding.create(general_partner: DonSean, holding_name: "Viking",sector: "Technology", controlling_interests: ["MSFT"], total_holding_assets: AMZN_Price*3000000000)

#Vanderbilt Holding
Vanderbilt = Holding.create(general_partner: NancyDo, holding_name: "Vanderbilt",sector: "Consumer Discretionary", controlling_interests: ["AMZN"], total_holding_assets: AMZN_Price*10000)

#ABC Holding
ABC = Holding.create(general_partner: JordanBelfort, holding_name: "ABC",sector: "Healthcare", controlling_interests: ["PFE"], total_holding_assets: PFE_Price*70000000)

#Homes Holding
XYZ = Holding.create(general_partner: DerekSilva, holding_name: "XYZ",sector: "Real Estate", controlling_interests: ["WELL"], total_holding_assets: WELL_Price*8000000)

# #JeJu Holding
# JeJu = Holding.create()

# Create MSFT Shares
OwnMicrosoft = Stock.create(
	holding: Viking, company_name: Microsoft.company_name, ceo: Microsoft.ceo,
	description: Microsoft.description, sector: Microsoft.sector, industry: Microsoft.industry,
	website: Microsoft.website, logo: Microsoft_Logo.url, market_cap: Microsoft_Key_Stats.market_cap, symbol: Microsoft_Key_Stats.symbol,
	price: Microsoft_Price, shares: 3000000000, buy_in_price: 100, revenue: Microsoft_Key_Stats.revenue,
	gross_profit: Microsoft_Key_Stats.gross_profit, ebitda: Microsoft_Key_Stats.ebitda, ytd_change_percent: Microsoft_Key_Stats.ytd_change_percent,
	year_5_change_percent: Microsoft_Key_Stats.year_5_change_percent)

# Create Amazon Shares
OwnAmazon = Stock.create(
	holding: Vanderbilt, company_name: AMZN.company_name, ceo: AMZN.ceo,
	description: AMZN.description, sector: AMZN.sector, industry: AMZN.industry,
	website: AMZN.website, logo: AMZN_Logo.url, market_cap: AMZN_Key_Stats.market_cap, symbol: AMZN_Key_Stats.symbol,
	price: AMZN_Price, shares: 10000, buy_in_price: 1600, revenue: AMZN_Key_Stats.revenue,
	gross_profit: AMZN_Key_Stats.gross_profit, ebitda: AMZN_Key_Stats.ebitda, ytd_change_percent: AMZN_Key_Stats.ytd_change_percent,
	year_5_change_percent: AMZN_Key_Stats.year_5_change_percent)

# Create Pfizer Shares
OwnPfizer = Stock.create(
	holding: ABC, company_name: PFE.company_name, ceo: PFE.ceo,
	description: PFE.description, sector: PFE.sector, industry: PFE.industry,
	website: PFE.website, logo: PFE_Logo.url, market_cap: PFE_Key_Stats.market_cap, symbol: PFE_Key_Stats.symbol,
	price: PFE_Price, shares: 70000000, buy_in_price: 35, revenue: PFE_Key_Stats.revenue,
	gross_profit: PFE_Key_Stats.gross_profit, ebitda: PFE_Key_Stats.ebitda, ytd_change_percent: PFE_Key_Stats.ytd_change_percent,
	year_5_change_percent: PFE_Key_Stats.year_5_change_percent)

# Create WellTower Shares
OwnWellTower = Stock.create(
	holding: XYZ, company_name: WELL.company_name, ceo: WELL.ceo,
	description: WELL.description, sector: WELL.sector, industry: WELL.industry,
	website: WELL.website, logo: WELL_Logo.url, market_cap: WELL_Key_Stats.market_cap, symbol: WELL_Key_Stats.symbol,
	price: WELL_Price, shares: 70000000, buy_in_price: 35, revenue: WELL_Key_Stats.revenue,
	gross_profit: WELL_Key_Stats.gross_profit, ebitda: WELL_Key_Stats.ebitda, ytd_change_percent: WELL_Key_Stats.ytd_change_percent,
	year_5_change_percent: WELL_Key_Stats.year_5_change_percent)
