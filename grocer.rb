def consolidate_cart(cart)
  new_cart = cart.reduce({}) do |memo, value| 
    value[:count] = 1
    p value.key
    # if memo[key]
    #   memo[key][:count] += 1
    # else
    #   value[:count] = 1
    #   memo[key] = value
    # end
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
