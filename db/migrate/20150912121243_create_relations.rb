class CreateRelations < ActiveRecord::Migration
  def change
    create_table :relations do |t|
    	t.integer	:sender_id,	null: false 
    	t.string	:sender_name,	null: false 
    	t.integer	:receiver_id,	null: false 
    	t.string	:receiver_name, null: false
    	t.boolean	:is_deleted
    	t.integer	:message_count
      t.timestamps
    end
  end
end
