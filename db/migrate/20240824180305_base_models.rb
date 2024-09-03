class BaseModels < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :first_name
      t.string :last_name

      t.timestamps
    end

    # Use STI for different event types
    create_table :events do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.timestamp :fade_from
      t.timestamp :start
      t.timestamp :end
      t.timestamp :fade_to
      t.boolean :is_annual, default: false
      t.boolean :floating, default: false
      t.string :color
      t.string :url
      t.text :notes

      t.timestamps
    end

    create_table :people do |t|
      t.references :user, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :maarried_name

      t.timestamps
    end

    create_table :places do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.decimal :lat
      t.decimal :lon

      t.timestamps
    end

    create_table :categories do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :color
      t.integer :order
      t.boolean :is_visible, default: true

      t.timestamps
    end
  end
end
