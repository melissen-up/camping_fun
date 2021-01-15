class CreateCamperActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :camper_activities do |t|
      t.belongs_to :camper, null: false, foreign_key: true
      t.belongs_to :activity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
