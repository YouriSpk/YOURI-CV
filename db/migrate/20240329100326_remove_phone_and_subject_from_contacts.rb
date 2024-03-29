class RemovePhoneAndSubjectFromContacts < ActiveRecord::Migration[7.1]
  def change
    remove_column :contacts, :phone, :string
    remove_column :contacts, :subject, :string
  end
end
