# encoding: UTF-8
class CreateBok8Lok8s < ActiveRecord::Migration
  def change
    create_table :bok8_lok8s do |t|
      t.string :篇名
      t.string :編號
      t.string :類名

      t.timestamps
    end
  end
end
