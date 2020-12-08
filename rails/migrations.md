# Migrations 12/7/2020

Migrations are used to change the shape of the database. Databases cannot be changed directly so we can create a migration file to make database edits.

Migrations can be used to:
- add a column
- update the data type of a column
- update a column name
- delete a column

#### Add Column
In terminal:
- Create a migration with a Rails generate command
- Give the migration a descriptive name
- $ rails generate migration add_calories_to_icecream
- Add Active Record statement to `def change` with appropriate data

```ruby
class AddCaloriesToIcecream < ActiveRecord::Migration[6.0]
  def change
    # add_column :table_name, :column_name, :datatype
    add_column :icecreams, :calories, :integer
  end
end
```

- $ rails db:migrate

```ruby
class AddScoopsToIcecream < ActiveRecord::Migration[6.0]
  def change
    # add_column :table_name, :column_name, :datatype
    add_column :icecreams, :scoops, :integer
  end
end
```

- $ rails db:migrate

#### Change Column Data Type
In terminal:
- Create a migration with a Rails generate command
- Give the migration a descriptive name
- $ rails generate migration change_calories_to_string
- Add Active Record statement to `def change` with appropriate data

```ruby
class ChangeCaloriesToString < ActiveRecord::Migration[6.0]
  def change
    # change_column :table_name, :column_name, :datatype
    change_column :icecreams, :calories, :string
  end
end
```

- $ rails db:migrate

#### Rename Column
In terminal:
- Create a migration with a Rails generate command
- Give the migration a descriptive name
- $ rails generate migration rename_flavor_to_flavor_type
- Add Active Record statement to `def change` with appropriate data

```ruby
class RenameFlavorToFlavorType < ActiveRecord::Migration[6.0]
  def change
    # rename_column :table, :old_column, :new_column
    rename_column :icecreams, :flavor, :flavor_type
  end
end
```

- $ rails db:migrate

#### Remove Column
In terminal:
- Create a migration with a Rails generate command
- Give the migration a descriptive name
- $ rails generate migration remove_columns_from_icecream
- Add Active Record statement to `def change` with appropriate data

```ruby
class RemoveCaloriesFromIcecream < ActiveRecord::Migration[6.0]
  def change
    # remove_column :table_name, :column_name
    remove_column :icecreams, :calories
  end
end
```

- $ rails db:migrate
