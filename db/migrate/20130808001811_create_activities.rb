class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :subject
      t.text :description
      t.string :type
      t.string :from
      t.string :email
      t.references :ticket
      t.timestamps
    end
    add_index :activities, :ticket_id
  end
end



