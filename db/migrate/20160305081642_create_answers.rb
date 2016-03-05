class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :description
      t.references :technology, index: true

      t.timestamps
    end
  end
end
