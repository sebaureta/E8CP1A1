option = 0

def create_hash_prod
    prod_array = []
  file = File.open('productos.txt', 'r')
  line = file.readlines
  file.close

  line.each do |i|
    products = {}
    prod = i.split(', ').map(&:chomp)
    products[:product] = prod[0]
    products[:stock] = prod[1..3]
    total_stock = sum_stock(products[:stock])
    products[:total] = total_stock
    prod_array << products
    end
    prod_array
  end

def sum_stock(stocks)
    sum = stocks.inject(0) do |acum, item|
        if item == 'NR'
            acum += 0
        else
            acum += item.to_i
        end
    end
  sum
end

def stock_per_prod
    products = create_hash_prod
    product_ts = products.each { |i| puts "#{i[:product]} - Stock: #{i[:total]}" }
end

while option != 6
puts 'Opcion 1'
puts 'Opcion 2'
puts 'Opcion 3'
puts 'Opcion 4'
puts 'Opcion 5'
puts 'Opcion 6'
puts 'Ingresa tu opcion'
option = gets.chomp.to_i

  if option == 1
    system('clear')
    puts '1: mostrar existencia por producto'
    puts '2: mostrar existencia total por tienda'
    puts '3: mostrar existencia total en todas las tiendas'
    puts '4: volver al menu principal'
    option_menu_1 = gets.chomp.to_i
    if option_menu_1 == 1
        puts
        stock_per_prod
        puts
    end
  elsif option == 2
    puts 'OPCION 2 jeje'
  elsif option == 3
    puts 'OPCION 3 jeje'
  elsif option == 4
    puts 'OPCION 4 jeje'
  elsif option == 5
    puts 'OPCION 5 jeje'
  elsif option == 6
    break
  end
end
