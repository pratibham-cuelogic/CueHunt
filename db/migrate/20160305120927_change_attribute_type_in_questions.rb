class ChangeAttributeTypeInQuestions < ActiveRecord::Migration
  def change
    change_column :questions, :title,  :text
  end
end
