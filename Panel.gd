extends Panel

# preloading
var city = preload("res://City.gd")
var product = preload("res://Product.gd")

# Declare member variables here. Examples:
var cash = 250
var firm_name = "Godot Pirate Trader"

var cities = []
var current_city_index = 0

var products = []

# Called when the node enters the scene tree for the first time.
func _ready():
	createProducts()
	createCities()
	updateUI()

func createCities():
	var city1 = city.new("Hong Kong")
	cities.append(city1)
	var city2 = city.new("Shangai")
	cities.append(city2)
	var city3 = city.new("Taipei")
	cities.append(city3)
	var city4 = city.new("Nagasaki")
	cities.append(city4)
	
func createProducts():
	var product1 = product.new("General goods", 3, 15)
	products.append(product1)
	var product2 = product.new("Arms", 3, 15)
	products.append(product2)

func updateUI():
	$Firm.text = firm_name
	$Cash.text = "Cash: $" + str(cash)
	$City.text = "City: " + cities[current_city_index].city_name

func _on_Shangai_pressed():
	current_city_index = 1
	updateUI()


func _on_Nagasaki_pressed():
	current_city_index = 3
	updateUI()
