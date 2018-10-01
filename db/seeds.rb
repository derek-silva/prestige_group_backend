# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'bigdecimal'
require 'pry'



#---- Healthcare Sector
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

#---- Tech Sector

Microsoft = IEX::Resources::Company.get('MSFT') #Basic information such as ceo, company_name, description, industry, sector, symbol, website
Microsoft_Key_Stats = IEX::Resources::KeyStats.get('MSFT')
Microsoft_Price = IEX::Resources::Price.get('MSFT')
Microsoft_Logo = IEX::Resources::Logo.get('MSFT')

AAPL = IEX::Resources::Company.get('AAPL')
AAPL_Key_Stats = IEX::Resources::KeyStats.get('AAPL')
AAPL_Price = IEX::Resources::Price.get('AAPL')
AAPL_Logo = IEX::Resources::Logo.get('AAPL')

GOOGL = IEX::Resources::Company.get('GOOGL')
GOOGL_Key_Stats = IEX::Resources::KeyStats.get('GOOGL')
GOOGL_Price = IEX::Resources::Price.get('GOOGL')
GOOGL_Logo = IEX::Resources::Logo.get('GOOGL')

FB = IEX::Resources::Company.get('FB')
FB_Key_Stats = IEX::Resources::KeyStats.get('FB')
FB_Price = IEX::Resources::Price.get('FB')
FB_Logo = IEX::Resources::Logo.get('FB')

#---- Energy Sector


#---- Consumer Discretionary
AMZN = IEX::Resources::Company.get('AMZN')
AMZN_Key_Stats = IEX::Resources::KeyStats.get('AMZN')
AMZN_Price = IEX::Resources::Price.get('AMZN')
AMZN_Logo = IEX::Resources::Logo.get('AMZN')

TSLA = IEX::Resources::Company.get('TSLA')
TSLA_Key_Stats = IEX::Resources::KeyStats.get('TSLA')
TSLA_Price = IEX::Resources::Price.get('TSLA')
TSLA_Logo = IEX::Resources::Logo.get('TSLA')

AZO = IEX::Resources::Company.get('AZO')
AZO_Key_Stats = IEX::Resources::KeyStats.get('AZO')
AZO_Price = IEX::Resources::Price.get('AZO')
AZO_Logo = IEX::Resources::Logo.get('AZO')


#---- Real Estate Sector
WELL = IEX::Resources::Company.get('WELL')
WELL_Key_Stats = IEX::Resources::KeyStats.get('WELL')
WELL_Price = IEX::Resources::Price.get('WELL')
WELL_Logo = IEX::Resources::Logo.get('WELL')

DLR = IEX::Resources::Company.get('DLR')
DLR_Key_Stats = IEX::Resources::KeyStats.get('DLR')
DLR_Price = IEX::Resources::Price.get('DLR')
DLR_Logo = IEX::Resources::Logo.get('DLR')

WRE = IEX::Resources::Company.get('WRE')
WRE_Key_Stats = IEX::Resources::KeyStats.get('WRE')
WRE_Price = IEX::Resources::Price.get('WRE')
WRE_Logo = IEX::Resources::Logo.get('WRE')

APLE = IEX::Resources::Company.get('APLE')
APLE_Key_Stats = IEX::Resources::KeyStats.get('APLE')
APLE_Price = IEX::Resources::Price.get('APLE')
APLE_Logo = IEX::Resources::Logo.get('APLE')

#GP
DonSean = GeneralPartner.create(name:"Don Sean", aum:300000000000, alma_mater:"University of Chicago Booth School of Business", net_worth: 30000000000, background: "The Don", picture_url:"https://i.dailymail.co.uk/i/pix/2014/08/01/article-2713150-0692644D00000514-711_634x423.jpg")

NancyDo = GeneralPartner.create(name:"Nancy Do", aum:300000000000, alma_mater:"University of Texas at Austin", net_worth: 30000000000, background: "Oops I did it again..", picture_url:"http://images2.fanpop.com/images/photos/3200000/Young-Britney-Spears-stars-childhood-pictures-3279537-1024-768.jpg")

JordanBelfort = GeneralPartner.create(name:"Jordan Belfort", aum:200000000000, alma_mater:"University of Wall Street", net_worth: 10000000000, background: "Blah Blah Blah", picture_url:"http://grupobcc.com/wp/wp-content/uploads/2015/05/jordan-belfort-keynote-speaker-e1432910384581.jpg")

DerekSilva = GeneralPartner.create(name:"Derek Silva", aum:300000000000, alma_mater:"University of Houston", net_worth: 30000000000, background: "I am Derek.", picture_url:"https://timedotcom.files.wordpress.com/2014/11/jay-z.jpg")

# ---------- Holdings
#Viking Holding
Viking = Holding.create(general_partner: DonSean, holding_name: "Viking",sector: "Technology", controlling_interests: [], total_holding_assets: 0)

#Vanderbilt Holding
Vanderbilt = Holding.create(general_partner: NancyDo, holding_name: "Vanderbilt",sector: "Consumer Discretionary", controlling_interests: [], total_holding_assets: 0)

#ABC Holding
ABC = Holding.create(general_partner: JordanBelfort, holding_name: "ABC",sector: "Healthcare", controlling_interests: [], total_holding_assets: 0)

#XYZ Holding
XYZ = Holding.create(general_partner: DerekSilva, holding_name: "XYZ",sector: "Real Estate", controlling_interests: [], total_holding_assets: 0)

# #JeJu Holding
# JeJu = Holding.create()

# ----------


#---- Viking Holding
# Create MSFT Shares
OwnMicrosoft = Stock.create(
	holding: Viking, company_name: Microsoft.company_name, ceo: Microsoft.ceo,
	description: Microsoft.description, sector: Microsoft.sector, industry: Microsoft.industry,
	website: Microsoft.website, logo: Microsoft_Logo.url, market_cap: Microsoft_Key_Stats.market_cap, symbol: Microsoft_Key_Stats.symbol,
	price: Microsoft_Price, shares: 7000000000, buy_in_price: Microsoft_Price*(1-Microsoft_Key_Stats.ytd_change_percent), revenue: Microsoft_Key_Stats.revenue,
	gross_profit: Microsoft_Key_Stats.gross_profit, ebitda: Microsoft_Key_Stats.ebitda, ytd_change_percent: Microsoft_Key_Stats.ytd_change_percent,
	year_5_change_percent: Microsoft_Key_Stats.year_5_change_percent)

# Create Apple Shares
OwnApple = Stock.create(
	holding: Viking, company_name: AAPL.company_name, ceo: AAPL.ceo,
	description: AAPL.description, sector: AAPL.sector, industry: AAPL.industry,
	website: AAPL.website, logo: AAPL_Logo.url, market_cap: AAPL_Key_Stats.market_cap, symbol: AAPL_Key_Stats.symbol,
	price: AAPL_Price, shares: 4000000, buy_in_price: AAPL_Price*(1-AAPL_Key_Stats.ytd_change_percent), revenue: AAPL_Key_Stats.revenue,
	gross_profit: AAPL_Key_Stats.gross_profit, ebitda: AAPL_Key_Stats.ebitda, ytd_change_percent: AAPL_Key_Stats.ytd_change_percent,
	year_5_change_percent: AAPL_Key_Stats.year_5_change_percent)

# Create Google Shares
OwnGoogle = Stock.create(
	holding: Viking, company_name: GOOGL.company_name, ceo: GOOGL.ceo,
	description: GOOGL.description, sector: GOOGL.sector, industry: GOOGL.industry,
	website: GOOGL.website, logo: GOOGL_Logo.url, market_cap: GOOGL_Key_Stats.market_cap, symbol: GOOGL_Key_Stats.symbol,
	price: GOOGL_Price, shares: 30000, buy_in_price: GOOGL_Price*(1-GOOGL_Key_Stats.ytd_change_percent), revenue: GOOGL_Key_Stats.revenue,
	gross_profit: GOOGL_Key_Stats.gross_profit, ebitda: GOOGL_Key_Stats.ebitda, ytd_change_percent: GOOGL_Key_Stats.ytd_change_percent,
	year_5_change_percent: GOOGL_Key_Stats.year_5_change_percent)

# Create Facebook Shares
OwnFacebook = Stock.create(
	holding: Viking, company_name: FB.company_name, ceo: FB.ceo,
	description: FB.description, sector: FB.sector, industry: FB.industry,
	website: FB.website, logo: FB_Logo.url, market_cap: FB_Key_Stats.market_cap, symbol: FB_Key_Stats.symbol,
	price: FB_Price, shares: 3000000, buy_in_price: FB_Price*(1-FB_Key_Stats.ytd_change_percent), revenue: FB_Key_Stats.revenue,
	gross_profit: FB_Key_Stats.gross_profit, ebitda: FB_Key_Stats.ebitda, ytd_change_percent: FB_Key_Stats.ytd_change_percent,
	year_5_change_percent: FB_Key_Stats.year_5_change_percent)


#---- Vanderbilt Holding - Consumer Discretionary
# Create Amazon Shares
OwnAmazon = Stock.create(
	holding: Vanderbilt, company_name: AMZN.company_name, ceo: AMZN.ceo,
	description: AMZN.description, sector: AMZN.sector, industry: AMZN.industry,
	website: AMZN.website, logo: AMZN_Logo.url, market_cap: AMZN_Key_Stats.market_cap, symbol: AMZN_Key_Stats.symbol,
	price: AMZN_Price, shares: 1500000, buy_in_price: AMZN_Price*(1-AMZN_Key_Stats.ytd_change_percent), revenue: AMZN_Key_Stats.revenue,
	gross_profit: AMZN_Key_Stats.gross_profit, ebitda: AMZN_Key_Stats.ebitda, ytd_change_percent: AMZN_Key_Stats.ytd_change_percent,
	year_5_change_percent: AMZN_Key_Stats.year_5_change_percent)

# Create Tesla Shares
OwnTesla = Stock.create(
	holding: Vanderbilt, company_name: TSLA.company_name, ceo: TSLA.ceo,
	description: TSLA.description, sector: TSLA.sector, industry: TSLA.industry,
	website: TSLA.website, logo: TSLA_Logo.url, market_cap: TSLA_Key_Stats.market_cap, symbol: TSLA_Key_Stats.symbol,
	price: TSLA_Price, shares: 10000, buy_in_price: TSLA_Price*(1-TSLA_Key_Stats.ytd_change_percent), revenue: TSLA_Key_Stats.revenue,
	gross_profit: TSLA_Key_Stats.gross_profit, ebitda: TSLA_Key_Stats.ebitda, ytd_change_percent: TSLA_Key_Stats.ytd_change_percent,
	year_5_change_percent: TSLA_Key_Stats.year_5_change_percent)

# Create Autozone Shares
OwnAutoZone = Stock.create(
	holding: Vanderbilt, company_name: AZO.company_name, ceo: AZO.ceo,
	description: AZO.description, sector: AZO.sector, industry: AZO.industry,
	website: AZO.website, logo: AZO_Logo.url, market_cap: AZO_Key_Stats.market_cap, symbol: AZO_Key_Stats.symbol,
	price: AZO_Price, shares: 10000, buy_in_price: AZO_Price*(1-AZO_Key_Stats.ytd_change_percent), revenue: AZO_Key_Stats.revenue,
	gross_profit: AZO_Key_Stats.gross_profit, ebitda: AZO_Key_Stats.ebitda, ytd_change_percent: AZO_Key_Stats.ytd_change_percent,
	year_5_change_percent: AZO_Key_Stats.year_5_change_percent)


#---- ABC Holding - Healthcare
# Create Pfizer Shares
OwnPfizer = Stock.create(
	holding: ABC, company_name: PFE.company_name, ceo: PFE.ceo,
	description: PFE.description, sector: PFE.sector, industry: PFE.industry,
	website: PFE.website, logo: PFE_Logo.url, market_cap: PFE_Key_Stats.market_cap, symbol: PFE_Key_Stats.symbol,
	price: PFE_Price, shares: 7000000, buy_in_price: PFE_Price*(1-PFE_Key_Stats.ytd_change_percent), revenue: PFE_Key_Stats.revenue,
	gross_profit: PFE_Key_Stats.gross_profit, ebitda: PFE_Key_Stats.ebitda, ytd_change_percent: PFE_Key_Stats.ytd_change_percent,
	year_5_change_percent: PFE_Key_Stats.year_5_change_percent)

# Create Johnson & Johnson Shares
OwnJNJ = Stock.create(
	holding: ABC, company_name: JNJ.company_name, ceo: JNJ.ceo,
	description: JNJ.description, sector: JNJ.sector, industry: JNJ.industry,
	website: JNJ.website, logo: JNJ_Logo.url, market_cap: JNJ_Key_Stats.market_cap, symbol: JNJ_Key_Stats.symbol,
	price: JNJ_Price, shares: 30000, buy_in_price: JNJ_Price*(1-JNJ_Key_Stats.ytd_change_percent), revenue: JNJ_Key_Stats.revenue,
	gross_profit: JNJ_Key_Stats.gross_profit, ebitda: JNJ_Key_Stats.ebitda, ytd_change_percent: JNJ_Key_Stats.ytd_change_percent,
	year_5_change_percent: JNJ_Key_Stats.year_5_change_percent)


#---- XYZ Holding
# Create WellTower Shares
OwnWellTower = Stock.create(
	holding: XYZ, company_name: WELL.company_name, ceo: WELL.ceo,
	description: WELL.description, sector: WELL.sector, industry: WELL.industry,
	website: WELL.website, logo: WELL_Logo.url, market_cap: WELL_Key_Stats.market_cap, symbol: WELL_Key_Stats.symbol,
	price: WELL_Price, shares: 70000000, buy_in_price: WELL_Price*(1-WELL_Key_Stats.ytd_change_percent), revenue: WELL_Key_Stats.revenue,
	gross_profit: WELL_Key_Stats.gross_profit, ebitda: WELL_Key_Stats.ebitda, ytd_change_percent: WELL_Key_Stats.ytd_change_percent,
	year_5_change_percent: WELL_Key_Stats.year_5_change_percent)

# Create Digital Realty Shares
OwnDigitalRealty = Stock.create(
	holding: XYZ, company_name: DLR.company_name, ceo: DLR.ceo,
	description: DLR.description, sector: DLR.sector, industry: DLR.industry,
	website: DLR.website, logo: DLR_Logo.url, market_cap: DLR_Key_Stats.market_cap, symbol: DLR_Key_Stats.symbol,
	price: DLR_Price, shares: 100000, buy_in_price: DLR_Price*(1-DLR_Key_Stats.ytd_change_percent), revenue: DLR_Key_Stats.revenue,
	gross_profit: DLR_Key_Stats.gross_profit, ebitda: DLR_Key_Stats.ebitda, ytd_change_percent: DLR_Key_Stats.ytd_change_percent,
	year_5_change_percent: DLR_Key_Stats.year_5_change_percent)

# Create Washington Real Estate Investment Trust Shares
OwnWRE = Stock.create(
	holding: XYZ, company_name: WRE.company_name, ceo: WRE.ceo,
	description: WRE.description, sector: WRE.sector, industry: WRE.industry,
	website: WRE.website, logo: WRE_Logo.url, market_cap: WRE_Key_Stats.market_cap, symbol: WRE_Key_Stats.symbol,
	price: WRE_Price, shares: 50000, buy_in_price: WRE_Price*(1-WRE_Key_Stats.ytd_change_percent), revenue: WRE_Key_Stats.revenue,
	gross_profit: WRE_Key_Stats.gross_profit, ebitda: WRE_Key_Stats.ebitda, ytd_change_percent: WRE_Key_Stats.ytd_change_percent,
	year_5_change_percent: WRE_Key_Stats.year_5_change_percent)

# Create Washington Real Estate Investment Trust Shares
OwnAPLE = Stock.create(
	holding: XYZ, company_name: APLE.company_name, ceo: APLE.ceo,
	description: APLE.description, sector: APLE.sector, industry: APLE.industry,
	website: APLE.website, logo: APLE_Logo.url, market_cap: APLE_Key_Stats.market_cap, symbol: APLE_Key_Stats.symbol,
	price: APLE_Price, shares: 300000, buy_in_price: APLE_Price*(1-APLE_Key_Stats.ytd_change_percent), revenue: APLE_Key_Stats.revenue,
	gross_profit: APLE_Key_Stats.gross_profit, ebitda: APLE_Key_Stats.ebitda, ytd_change_percent: APLE_Key_Stats.ytd_change_percent,
	year_5_change_percent: APLE_Key_Stats.year_5_change_percent)




def update_aum
	Holding.all.each do |holding|
		holding.stocks.each do |stock|
			#binding.pry
			current_stock_holding = stock.shares*stock.price
			holding.total_holding_assets += current_stock_holding
			
			if current_stock_holding > stock.market_cap/2
				holding.controlling_interests << stock.company_name
			end

			holding.save
		end
	end
end

update_aum
