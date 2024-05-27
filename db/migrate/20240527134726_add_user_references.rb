class AddUserReferences < ActiveRecord::Migration[7.1]
  def change
    add_reference :planets, :user
  end
end
