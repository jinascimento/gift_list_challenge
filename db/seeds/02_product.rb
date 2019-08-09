# Products
puts "********** Criando Produtos **********"
categories = Category.all

categories.each do |c|
  50.times do
    Product.create(description: Faker::Lorem.paragraph,
                   category: c,
                   name: Faker::Commerce.product_name,
                   price: Faker::Commerce.price
    )
  end
end
puts "********** Produtos criados **********"