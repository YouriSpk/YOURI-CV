class AddDescriptionToDegrees < ActiveRecord::Migration[7.1]
  def change
    add_column :degrees, :description, :text
  end
end
