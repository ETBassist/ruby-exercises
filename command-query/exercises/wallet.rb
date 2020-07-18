class Wallet
  attr_accessor :contents, :value, :cents

  def initialize
    @contents = []
    @value = { :penny => 1, :nickel => 5, :dime => 10, :quarter => 25, :dollar => 100 }
    @cents = 0
  end

  def << (coin)
    @contents << coin
    @cents += @value[coin]
  end

  def take(coin, *coins)
    if @contents.include?(coin)
      @contents.delete_at(@contents.find_index(coin))
      @cents -= @value[coin]
      if coins.length > 0
        coins.each do |grab|
          @contents.delete_at(@contents.find_index(grab))
          @cents -= @value[grab]
        end
      end
    end
  end

end
