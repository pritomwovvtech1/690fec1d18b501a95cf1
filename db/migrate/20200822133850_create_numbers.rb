class CreateNumbers < ActiveRecord::Migration[6.0]
  def change
    create_table :numbers do |t|
      t.bigint :ph_no

      t.timestamps
    end
  end
end
