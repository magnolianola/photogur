class AddComments < ActiveRecord::Migration
  	def change
  		create_table :comments do |t|
  			t.string :name
  			t.string :content
  			t.string :picture_id

  			t.timestamps
  		end
	end
end
