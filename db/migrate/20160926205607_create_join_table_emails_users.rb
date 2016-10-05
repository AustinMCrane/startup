class CreateJoinTableEmailsUsers < ActiveRecord::Migration[5.0]
  def change
    create_join_table :emails, :users do |t|
      t.index [:email_id, :user_id]
      t.index [:user_id, :email_id]
    end
  end
end
