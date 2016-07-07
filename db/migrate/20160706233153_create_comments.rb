class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.integer  :user_id
    	t.integer  :parent_id
    	t.boolean  :parent_status, default: false
    	t.text     :body,					 default: ""
      t.timestamps null: false
    end
  end
end
