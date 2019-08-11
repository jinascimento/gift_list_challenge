# Products
puts "********** Criando listas **********"

categories = Category.all

categories.each do |c|
    List.create(category: c, name: c.name)
end

puts "********** listas criadas com sucesso **********"

puts "********** Criando Listas com itens de produtos e seus produtos **********"

lists = List.all

lists.each do |l|
  50.times do
    l.product_items << ProductItem.new(product: Product.where(category: l.category).sample)
    l.save
  end
end

puts "********** Listas com itens de produtos e seus produtos criadas com sucesso **********"