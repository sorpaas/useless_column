class CreateDeclarations < ActiveRecord::Migration
  def change
    create_table :declarations do |t|
      t.string :subject
      t.string :verb
      t.text :arguments

      t.timestamps
    end
  end
end
