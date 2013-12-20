# encoding:UTF-8
class CreateSu5Tian2s < ActiveRecord::Migration
  def change
    create_table :su5_tian2s do |t|
      t.references :bok8_lok8, index: true
      t.string :辭典編號
      t.string :噶哈巫語教材標記法
      t.string :噶哈巫語潘永歷標記法
      t.string :中文譯解
      t.string :臺語譯解
      t.text :參考
      t.string :出處

      t.timestamps
    end
  end
end
