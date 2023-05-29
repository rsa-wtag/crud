class CreateTasks < ActiveRecord::Migration[6.1]
    def change
        create_table :tasks do |task|
            task.string :content
            task.boolean :is_done, null: false, default: false
            task.timestamps
        end
    end
end