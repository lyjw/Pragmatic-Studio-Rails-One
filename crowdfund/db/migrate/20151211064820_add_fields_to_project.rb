class AddFieldsToProject < ActiveRecord::Migration
  def change
    add_column :projects, :pledging_ends_on, :datetime
    add_column :projects, :website, :string
  end
end
