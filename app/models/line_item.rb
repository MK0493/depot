class LineItem < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :product
  belongs_to :cart, optional: true

  def total_price
    product.price * quantity
  end

  # def total_price
  #   line_items.sum { |item| item.total_price }
  # end 
  
  
end
