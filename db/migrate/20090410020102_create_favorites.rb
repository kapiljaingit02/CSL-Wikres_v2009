class CreateFavorites < ActiveRecord::Migration
  def self.up
    create_table :favorites do |t|
      t.references :faveable, :polymorphic => true
      t.references :user

      t.timestamps
    end
  end

  def self.down
    drop_table :favorites
  end
end
