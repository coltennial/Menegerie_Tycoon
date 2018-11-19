class AddKeeperNameToZoos < ActiveRecord::Migration[5.2]
  def change
    add_column :zoos, :keeper_name, :string
  end
end
