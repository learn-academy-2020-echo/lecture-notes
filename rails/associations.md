# Associations 12/7/2020

Applications will often require more than one table. The tables can have

has_many --> belongs_to relationships

The foreign key ALWAYS lives on the belongs_to side.

Generate First Model:  
$ rails generate model Person name:string  
$ rails db:migrate  

Generate Second Model:  
$ rails generate model IceCream flavor:string scoops:integer person_id:integer  
$ rails db:migrate

person_id - is the foreign key

*db/schema.rb*
```ruby
ActiveRecord::Schema.define(version: 2020_12_07_234004) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ice_creams", force: :cascade do |t|
    t.string "flavor"
    t.integer "scoops"
    t.integer "person_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
```


Define Relationships:  
*app/models/person.rb*
```ruby
class Person < ApplicationRecord
  has_many :ice_creams
end
```
*app/models/ice_cream.rb*
```ruby
class IceCream < ApplicationRecord
  belongs_to :person
end
```

Add content to Rails console:
```
> Person.create name: 'Raul'
> Person.create name: 'Chris'
> Person.create name: 'Mina'
```

Need to add ice cream, but they can't be on their own

```
> raul = Person.first
> raul.ice_creams.create flavor: 'cookies and cream', scoops: 2

> r = Person.find 1
> r.ice_creams.create flavor: 'Vanilla', scoops: 1

> chris = Person.second
> chris.ice_creams.create flavor: 'mint chip', scoops: 2

> mina = Person.second
> mina.ice_creams.create flavor: 'peanut butter cup', scoops: 7
```
