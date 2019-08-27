def consolidate_cart(cart)
  new_cart = cart.reduce({}) do |memo, value| 
    # value[:count] = 1
    value.each do|key, value|
      if !memo[key]
         value[:count] = 0
        memo[key] = value
      end
      memo[key][:count] += 1
    end
    memo
  end
end

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
