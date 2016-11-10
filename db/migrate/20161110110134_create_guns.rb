class CreateGuns < ActiveRecord::Migration[5.0]
  def change
    create_table :guns do |t|
      t.string :name

      t.timestamps
    end
  end
end
