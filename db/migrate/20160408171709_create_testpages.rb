class CreateTestpages < ActiveRecord::Migration
  def change
    create_table :testpages do |t|

      t.timestamps null: false
    end
  end
end
