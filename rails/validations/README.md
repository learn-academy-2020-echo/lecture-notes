# Validations 12/8/2020

Setup a new Rails app:
- $ rails new validations -d postgresql -T
- $ cd validations
- $ rails db:create  
- $ bundle add rspec-rails  
- $ rails generate rspec:install
- $ rails generate model Learnbook username:string email:string profile:text
- $ rails db:migrate
