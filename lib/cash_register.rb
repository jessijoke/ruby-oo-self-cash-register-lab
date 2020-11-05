
class CashRegister
    attr_accessor :total, :discount, :title, :quantity, :cart, :last_price
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @cart = []
        @last_price
    end

    def total
        @total
    end

    def add_item(title, price, quantity=1)  
        quantity.times do
            @cart << title
        end
        self.total += price*quantity
        @last_price = price*quantity
    end

    def apply_discount
        #DO YOU KNOW HOW PROUD I AM OF THIS LINE!?
        @discount > 0 ? "After the discount, the total comes to $#{self.total = (self.total - self.total * (discount.to_f / 100)).to_i}." : "There is no discount to apply."
    end

    def items
        @cart
    end
    
    def void_last_transaction
        self.total -= @last_price
    end
end