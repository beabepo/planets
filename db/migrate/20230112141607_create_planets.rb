class CreatePlanets < ActiveRecord::Migration[6.1]
  def change
    create_table :planets do |t|
      t.string :name
      t.string :image_url
      t.text   :details
      t.text   :facts

      t.timestamps
    end
  end
end
