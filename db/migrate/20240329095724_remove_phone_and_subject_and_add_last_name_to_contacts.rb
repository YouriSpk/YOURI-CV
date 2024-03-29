class RemovePhoneAndSubjectAndAddLastNameToContacts < ActiveRecord::Migration[7.1]
  def change
    remove_column :contacts, :phone, :string
    remove_column :contacts, :subject, :string
    add_column :contacts, :last_name, :string
  end
end
