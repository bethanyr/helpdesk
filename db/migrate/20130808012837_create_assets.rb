class CreateAssets < ActiveRecord::Migration
  def change
    rename_column(:activities, :email, :email_address)
  end
end
