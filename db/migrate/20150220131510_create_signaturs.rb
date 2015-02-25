class CreateSignaturs < ActiveRecord::Migration
  def change
    create_table :signaturs do |t|
 
 
      t.references :user, index: true
      t.attachment :image

      t.timestamps null: false
    end
    add_foreign_key :signaturs, :users
  end
end
