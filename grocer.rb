def consolidate_cart(cart)
  new_cart = cart.reduce({}) do |memo, value| 
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
  for coupon in coupons
    if cart[coupon[:item]]
      cart = add_coupon_if_applicable(coupon, cart)
    end
  end
  cart
end

def add_coupon_if_applicable(coupon, cart)
  item_name = coupon[:item]
  number_of_times_to_apply = cart[item_name][:count] / coupon[:num]
  if number_of_times_to_apply > 0 
    cart["#{item_name} W/COUPON"] = {
      price: coupon[:cost] / coupon[:num],
      clearance: cart[item_name][:clearance],
      count: number_of_times_to_apply * coupon[:num]
    }
    cart[coupon[:item]][:count] -= cart["#{coupon[:item]} W/COUPON"][:count]
  end
  cart
end


def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
