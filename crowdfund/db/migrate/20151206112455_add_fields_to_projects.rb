class AddFieldsToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :website, :string
    add_column :projects, :pledging_ends_on, :date
    add_column :projects, :category, :string
  end
end
