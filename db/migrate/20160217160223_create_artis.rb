class CreateArtis < ActiveRecord::Migration
  def change
    create_table :artis do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
