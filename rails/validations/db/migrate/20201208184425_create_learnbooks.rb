class CreateLearnbooks < ActiveRecord::Migration[6.0]
  def change
    create_table :learnbooks do |t|
      t.string :username
      t.string :email
      t.text :profile

      t.timestamps
    end
  end
end
