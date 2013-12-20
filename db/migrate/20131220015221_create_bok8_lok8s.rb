class CreateBok8Lok8s < ActiveRecord::Migration
  def change
    create_table :bok8_lok8s do |t|
      t.string :pinn1_mia5
      t.string :pian1_ho7
      t.string :lui7

      t.timestamps
    end
  end
end
