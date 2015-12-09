class AddUserInterestsAssociation < ActiveRecord::Migration
  def change
    add_reference :users, :interest, index: true
  end
end
