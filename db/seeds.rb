Category.destroy_all
Item.destroy_all

CATEGORIES = ["Beverages", "Appetizers", "Entrees", "Deserts"]
BEVERAGES  = ["Coke","Pepsi","Whiskey"]
APPETIZERS = ["Fries", "Poppers", "Calamari"]
ENTREES    = ["Burger", "Goat Stew", "Pasta", "Pho"]
DESERTS    = ["Ice cream", "Cake", "Pie"]
PRICES     = [1.0, 2.0, 3.0]

CATEGORIES.each do |category|
  Category.create(name:category)
end
beverages = Category.find_by(name: "Beverages")
appetizers = Category.find_by(name: "Appetizers")
entrees = Category.find_by(name: "Entrees")
deserts = Category.find_by(name: "Deserts")

BEVERAGES.each do |beverage|
  Item.create(name:beverage, price:PRICES.sample, category: beverages)
end
APPETIZERS.each do |appetizer|
  Item.create(name:appetizer, price:PRICES.sample, category: appetizers)
end
ENTREES.each do |entree|
  Item.create(name:entree, price:PRICES.sample, category: entrees)
end
DESERTS.each do |desert|
  Item.create(name:desert, price:PRICES.sample, category: deserts)
end
