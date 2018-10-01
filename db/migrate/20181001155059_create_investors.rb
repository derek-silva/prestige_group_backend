class CreateInvestors < ActiveRecord::Migration[5.2]
  def change
    create_table :investors do |t|
      t.string :name
      t.string :username
      t.string :password_digest
      t.string :bio
      t.string :avatar
      t.decimal :investmentamount

      t.timestamps
    end
  end
end
