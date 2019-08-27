def consolidate_cart(cart)
  new_cart = cart.reduce({}) do |memo, value| 
    # value[:count] = 1
    value.each do|key, value|
      if memo[key]
        memo[key][:count] += 1
      else
        value[:count] = 1
        memo[key] = value
    end
    memo
  end
  p new_cart
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
