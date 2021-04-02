class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks, comment: "Tabela para armazenar as metas" do |t|
      t.string :name, null: false, limit: 250
      t.text :description, limit: 2000
      t.integer :status, null: false, default: 1
      t.datetime :estimative, null: false
      t.decimal :value
      t.integer :priority

      t.timestamps
    end
  end
end
