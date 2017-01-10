class ChangingDates < ActiveRecord::Migration[5.0]
  def change
        rename_column :reservations, :date, :startdate
        add_column :reservations, :enddate, :datetime

  end
end
