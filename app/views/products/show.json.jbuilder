#json.partial! 'products/product', product: @product
json.product do
    json.partial! "/products/product.json.jbuilder", product: @product
end