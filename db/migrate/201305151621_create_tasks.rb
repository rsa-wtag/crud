class CreateTasks < ActiveRecord::Migration[6.1]
    def change
        create_table :tasks do |task|
            task.string :content
            task.boolean :done
            task.timestamps
        end
    end
end