class CreateCocs < ActiveRecord::Migration
  def change
    create_table :cocs do |t|
	 t.text :body
    	t.belongs_to :user, index: true
    	t.belongs_to :comment, index: true

      t.timestamps null: false    end
  end
end
