class CreateQGenerators < ActiveRecord::Migration[5.2]
  def change
    create_table :q_generators do |t|
      t.string :name
      t.string :message
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
