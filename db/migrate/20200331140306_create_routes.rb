class CreateRoutes < ActiveRecord::Migration[6.0]
  def change
    create_table :routes do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
