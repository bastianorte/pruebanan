class CreateUserTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :user_tasks do |t|
      t.references :task
      t.references :user
      t.boolean :check

      t.timestamps
    end
  end
end
