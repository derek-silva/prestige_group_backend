class CreateGeneralPartners < ActiveRecord::Migration[5.2]
  def change
    create_table :general_partners do |t|
	    t.string "name"
	    t.decimal "aum"
	    t.string "alma_mater"
	    t.decimal "net_worth"
	    t.string "background"
	    t.string "picture_url"
    end
  end
end
