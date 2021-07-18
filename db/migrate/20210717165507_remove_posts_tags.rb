class RemovePostsTags < ActiveRecord::Migration[5.0]
  def change
    drop_table :posts_tags
  end
end
