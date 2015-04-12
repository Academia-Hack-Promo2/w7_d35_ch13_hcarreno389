class CreateDiggs < ActiveRecord::Migration
  def change
    create_table :diggs do |t|

      t.timestamps null: false
    end
  end
end
