class AddIconUrlToSkills < ActiveRecord::Migration[7.1]
  def change
    add_column :skills, :icon_url, :string
  end
end
