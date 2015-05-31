require 'active_record'
require './todo'

ActiveRecord::Base.establish_connection adapter: 'sqlite3',
                                        database: 'todomvc.db'
# you'll need more than this

ActiveRecord::Base.connection.create_table 'todos',
	force:true do |table|
		table.string    :task
		table.boolean   :completed
  
end

