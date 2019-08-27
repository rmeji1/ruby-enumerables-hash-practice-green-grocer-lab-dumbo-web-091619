def consolidate_cart(cart)
  new_cart = cart.reduce({}) do |memo, value| 
    # value[:count] = 1
    value.each do|key, value| 
      memo[key] = value
    end
  end
  # p new_cart
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
