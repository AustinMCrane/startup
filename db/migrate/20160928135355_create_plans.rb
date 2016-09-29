class CreatePlans < ActiveRecord::Migration[5.0]
  def change
    create_table :plans do |t|
      t.integer :amount
      t.string :interval, default: 'month'
      t.string :name
      t.string :currency, default: 'usd'
      t.string :stripe_id

      t.timestamps
    end
  end
end
