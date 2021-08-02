class CreateBananas < ActiveRecord::Migration[6.1]
  def change
    create_table :bananas do |t|

      t.timestamps
    end
  end
end
