spam = {name: 'spam', price: 3.99, location: 'aisle 4', color: 'yellow', tasty: false}
bread = {name: 'bread', price: 4.99, location: 'aisle 9', color: 'brown', tasty: true}
pineapple = {name: 'pineapple', price: 8.99, location: 'aisle 7', color: 'yellow', tasty: true}

puts "#{spam[:name]} costs #{spam[:price]} and is located in #{spam[:location]}. It is the color #{spam[:color]}"

class Item
  attr_reader :name, :price, :location
  def initialize(input)
    @name = input[:name]
    @price = input[:price]
    @location = input[:location]
    @color = input[:color]
    @tasty = input[:tasty]
  end

  def item_info
    puts "#{@name} costs #{@price} and is located in #{@location}. It is the color #{@color}"
  end

end

pineapple = Item.new(name: 'pineapple', price: 8.99, location: 'aisle 7', color: 'yellow', tasty: true)
puts pineapple.item_info
puts pineapple.name