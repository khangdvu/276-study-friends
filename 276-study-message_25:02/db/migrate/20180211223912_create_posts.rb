class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :user
      t.string :course
      t.string :content

      t.timestamps null: false
    end
  end
end
