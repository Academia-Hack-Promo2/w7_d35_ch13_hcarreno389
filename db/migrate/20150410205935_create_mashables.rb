class CreateMashables < ActiveRecord::Migration
  def change
    create_table :mashables do |t|

      t.timestamps null: false
    end
  end
end
