class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :company_name
      t.string :url
      t.string :job
      t.string :age
      t.string :qualification

      t.timestamps null: false
    end
  end
end
