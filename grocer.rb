def consolidate_cart(cart)
  cart.reduce({}) do |memo, (key, value)| 
    if memo[key]
      memo[key][:count] += 1
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
