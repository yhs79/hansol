class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|

    t.string:user_title
    t.string:user_name
    t.string:user_password
    t.text:user_content
    t.string:user_img
    t.string:user_email
    t.string:user_date

      t.timestamps null:false
    end
  end
end
