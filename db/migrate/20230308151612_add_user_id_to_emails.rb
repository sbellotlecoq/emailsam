class AddUserIdToEmails < ActiveRecord::Migration[7.0]
  def change
    add_reference :emails, :user, foreign_key: true
  end
end
