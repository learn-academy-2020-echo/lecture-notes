# Active Record 10/3/2020

Active Record is an ORM which stands for Object Relational Mapping. It wraps the database and translates between Rails and PostgreSQL.

First we need to create a table in the database.

We need two things to do that:
1. Rails generate command
2. Active Record [ data types ](https://michaelsoolee.com/rails-activerecord-data-types/)

$ rails generate model Schedule day:string event_date:date event_description:string

- Rails generate model (Rails command use to make stuff the Rails way)
- Name of model in Pascal case (because it is a class)
- Name of column and data type
- This command creates a model class and migration

$ rails db:migrate

- Uses the migration file to create a table in the database
- Creates a `schema.rb` file
- Schema - visual representation of the current status of the database
- The schema **cannot** be updated directly

### Interacting with the Database
- Must be done in Rails console
- Enter the console: `$ rails c`
- Exit the console: `> exit`


### Active Record CRUD Actions
Active Record Queries

**Seeing Content in the Database (READ)**

See all:
- `> Schedule.all`
- Is a wrapper around the SQL query: SELECT * FROM "schedules"

See one:
- By id
- `> Schedule.find 3`
- By placement in the Active Record array
- `> Schedule.first`
- `> Schedule.last`

See a set:
- `>Schedule.where day: "Tuesday"`
- `>Schedule.where day: "Wednesday"`
- Returns an array of the items that match the condition

**Creating a Variable**
- `> wed = Schedule.where day: "Wednesday"`
- Variable is local to the console session

**Adding Content to the Database (CREATE)**  
Schema:  
- day - string
- event_date - date
- event_description - string
- `> Schedule.create day: "Tuesday", event_date: "2020-12-01", event_description: "Yoga"`
- `> Schedule.create day: "Wednesday", event_date: "2020-12-02", event_description: "White boarding practice"`
- `> Schedule.create day: "Wednesday", event_date: "2020-12-02"`
- ^ Gets creates with a nil value for event_description
- `> Schedule.create day: "Thursday", event_date: "2020-12-03", event_description: "Office hours"`

**Editing Content in the Database (UPDATE)**  
- Must identify which item we will update
- Create a variable to store the item
- `> database = Schedule.find 3`
- `> database.event_description = "Worked` with SQL data queries"
- This updates the variable but not the database
- `> database.save`
- Now the database is updated


**Deleting Content in the Database (DELETE)**  
- Must identify which item we will delete
- Create a variable
- `> x = Schedule.first`
- `> x.destroy`
- --or-- `> Schedule.first.destroy`
