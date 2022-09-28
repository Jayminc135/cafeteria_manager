class CreateOrderFeedbacks < ActiveRecord::Migration[7.0]
  def change
    create_table :order_feedbacks do |t|
      t.bigint :order_id
      t.integer :rating
      t.string :experience
      t.timestamps
    end
  end
end
