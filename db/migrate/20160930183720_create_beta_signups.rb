class CreateBetaSignups < ActiveRecord::Migration[5.0]
  def change
    create_table :beta_signups do |t|
      t.string :email

      t.timestamps
    end
  end
end
