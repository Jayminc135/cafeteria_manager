class DropOrderFeedbacks < ActiveRecord::Migration[7.0]
  def change
    drop_table :order_feedbacks
  end
end
