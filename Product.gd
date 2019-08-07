extends Node

var product_name = "[ProductName]"
var min_price = 3
var max_price = 15

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	pass # Replace with function body.

func _init(_product_name, _min_price, _max_price):
	product_name = _product_name
	min_price = _min_price
	max_price = _max_price

func calculatePrice():
	randomize() # set a new seed for the rand function
	return int(rand_range(min_price, max_price))
