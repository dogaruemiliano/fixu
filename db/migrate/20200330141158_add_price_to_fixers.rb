class AddPriceToFixers < ActiveRecord::Migration[5.2]
  def change
    add_monetize :fixers, :price, currency: { present: false }
  end
end
