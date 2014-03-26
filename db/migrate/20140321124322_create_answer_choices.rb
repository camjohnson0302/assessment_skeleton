class CreateThing < ActiveRecord::Migration
  def change
    create_table :thing do |t|
      t.belongs_to :user
      t.string     :property
      t.timestamps
    end
  end
end
