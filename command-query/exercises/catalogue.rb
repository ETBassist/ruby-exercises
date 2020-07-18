class Catalogue
  attr_accessor :products

  def initialize
    @products = []
  end

  def cheapest
    if @products.length >= 1
      @products = @products.sort_by do |product|
        product.price
      end
      self.products[0].name
    end
  end

  def << (product)
    @products << product
  end

end
