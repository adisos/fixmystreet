class CreateReports < ActiveRecord::Migration
  def self.up
    create_table :reports do |t|
      t.string :title
      t.text :description
      t.string :latitude
      t.string :longtitude

      t.timestamps
    end
  end

  def self.down
    drop_table :reports
  end
end
