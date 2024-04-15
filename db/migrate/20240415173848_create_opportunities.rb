class CreateOpportunities < ActiveRecord::Migration[7.1]
  def change
    create_table :opportunities do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
