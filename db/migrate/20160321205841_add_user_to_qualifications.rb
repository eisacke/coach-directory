class AddUserToQualifications < ActiveRecord::Migration
  def change
    add_reference :qualifications, :user, index: true, foreign_key: true
  end
end
