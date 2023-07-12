#json.products @products do |product|
  #json.id          product.id
  #json.title       product.title
  #json.description product.description
  #json.price       product.price
  #json.created_at  product.created_at
#end

json.products @products, partial: 'products/product', as: :product