# Products
puts "********** Criando Listas com itens de produtos e seus produtos **********"

categories = Category.all

categories.each do |c|
    List.create(category: c, name: c.name)
end

puts "********** Listas com itens de produtos e seus produtos criadas **********"