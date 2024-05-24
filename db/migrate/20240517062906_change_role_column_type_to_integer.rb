class ChangeRoleColumnTypeToInteger < ActiveRecord::Migration[7.0]
  def up
    # Change the column type from string to integer
    change_column :users, :role, 'integer USING CAST(role AS integer)'

    # Set a default value if needed
    change_column_default :users, :role, 0
  end

  def down
    # Change the column type back from integer to string
    change_column :users, :role, :string

    # Remove the default value
    change_column_default :users, :role, nil
  end
end
