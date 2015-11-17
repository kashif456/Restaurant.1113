class CreateTextNinjas < ActiveRecord::Migration
  def change
    create_table :text_ninjas do |t|
      t.string :index

      t.timestamps null: false
    end
  end
end
