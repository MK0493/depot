class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart

  def total_price
    product.price * quantity
  end

  # def total_price
  #   line_items.sum { |item| item.total_price }
  # end 
  
  
end
