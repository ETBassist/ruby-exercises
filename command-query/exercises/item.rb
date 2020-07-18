class Item
  attr_accessor :item, :price, :discount
  
  def initialize(item, price:, discount:)
    @item = item
    @price = price
    @discount = discount
  end

end
