class Clearance
  attr_accessor :sale_items

  def initialize
    @sale_items = []
  end

  def best_deal
    if @sale_items.length > 0
      @sale_items = @sale_items.sort_by do |item|
        item.price - item.discount
      end
      @sale_items[0].item
    else
      nil
    end
  end

  def << (item)
    @sale_items << item
  end

end
