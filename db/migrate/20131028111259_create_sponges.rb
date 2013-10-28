class CreateSponges < ActiveRecord::Migration
  def change
    create_table :sponges do |t|

      t.timestamps
    end
  end
end
