class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer "num1"
      t.integer "num2"
      t.integer "num3"
      t.integer "num4"
      t.integer "num5"
      t.integer "num6"
      t.timestamps null: false
    end
  end
end
