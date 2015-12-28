class CreateUserjobs < ActiveRecord::Migration
  def change
    create_table :userjobs do |t|
      t.integer :jobid
      t.integer :userid

      t.timestamps null: false
    end
  end
end
