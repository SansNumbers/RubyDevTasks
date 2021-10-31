class Inventory

    def initialize(array)
        @arr = array
    end

    def item_in_stock
        array = []
        @arr.each { |drink| array << drink[:name] if drink[:quantity_by_size].length > 0}
        print array.sort
    end

    def affordable
        array = []
        @arr.each { |drink| array << drink if drink[:price] < 50}
        puts array
    end

    def out_of_stock
        array = []
        @arr.each { |drink| array << drink if drink[:quantity_by_size].length == 0}
        puts array
    end

    def how_much_left(name)
        array = []
        @arr.each { |drink| return drink[:quantity_by_size] if drink[:name] == name}
        puts array
    end

    def total_stock
        sum = 0
        @arr.each { |drink| drink[:quantity_by_size].each { |litrage, quantity| sum = sum + quantity }}
        print sum
    end
end

inventory = [
    {price: 125.00, name: "Cola", quantity_by_size: {l033: 3, l05: 7, l1: 8, l2: 4}},
    {price: 40.00, name: "Pepsi", quantity_by_size: {}},
    {price: 39.99, name: "Water", quantity_by_size: {l033: 1, l2: 4}},
    {price: 70.00, name: "Juice", quantity_by_size: {l033: 7, l05: 2}}
]

drink = Inventory.new(inventory)

puts 'Drinks in stock: '
puts drink.item_in_stock
puts

puts 'Affordable drinks: '
puts drink.affordable

puts 'Drinks out of stock: '
puts drink.out_of_stock

puts 'How much Cola drinks left in stock: '
puts drink.how_much_left("Cola")
puts

puts 'Total amount of drinks: '
print drink.total_stock
