class CreateAffiliations < ActiveRecord::Migration
  def change
    create_table :affiliations do |t|
      t.string :affiliation_id
      t.string :name
      t.timestamps null: false
    end
  end
end
