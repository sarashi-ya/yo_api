class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string	:user_name,	null:false
    	t.string	:password, null:false
    	t.string	:user_token
    	t.string	:gcm_id, null:false
      t.timestamps
    end
  end
end