class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :answers
  end
end
