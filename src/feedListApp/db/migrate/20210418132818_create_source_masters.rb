class CreateSourceMasters < ActiveRecord::Migration[6.1]
  def change
    create_table :source_masters do |t|
      t.string :name
      t.string :url
      t.timestamps
    end
  end
end
