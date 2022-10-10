class CreateEqualObjects < ActiveRecord::Migration[7.0]
  def change
    create_table :equal_objects do |t|
      t.belongs_to :previous_study, null: false, foreign_key: true

      t.timestamps
    end
  end
end
