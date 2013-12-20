class CreateSu5Tian2s < ActiveRecord::Migration
  def change
    create_table :su5_tian2s do |t|
      t.references :bok8_lok8, index: true
      t.string :su5_tian2_pian1_ho7
      t.string :kau3_tsai5_piau1_ki3
      t.string :phuan1_ing2_lik8_piau1_ki3
      t.string :tiong1_bun5
      t.string :tai5_gi2
      t.text :tsham1_kho2
      t.string :tshut4_tshu3

      t.timestamps
    end
  end
end
