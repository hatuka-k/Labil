class AddPinCodeToMembers < ActiveRecord::Migration
  def change
    add_column :members, :pin_code, :string
  end
end
