class CreateHoldings < ActiveRecord::Migration[5.2]
  def change
    create_table :holdings do |t|
    	t.belongs_to :general_partner, foreign_key: true
    	t.string "holding_name"
    	t.string "sector"
    	t.string "controlling_interests", array: true
   	    t.decimal "total_holding_assets"
    end
    add_index :holdings, :controlling_interests, using: :gin
  end
end
