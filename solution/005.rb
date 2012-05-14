(1..1.0/0).take_while { |n|
  !((1..20).all? { |m| m % n == 0 })
}.last