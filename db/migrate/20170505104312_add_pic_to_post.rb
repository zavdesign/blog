class AddPicToPost < ActiveRecord::Migration[5.0]
  def up
    add_attachment :posts, :pic
  end

  def down
    remove_attachment :posts, :pic
  end
end
