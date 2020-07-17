class RemoveDescriptionFromConditions < ActiveRecord::Migration[6.0]
  def change
    remove_column :conditions, :description, :text
  end
end
