class AddInitialData < ActiveRecord::Migration
  def up
  end
  def down
    Bok8Lok8.delete_all
  end
end
