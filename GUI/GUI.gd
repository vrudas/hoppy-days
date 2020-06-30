extends CanvasLayer

onready var LifeCount: Label = $Control/TextureRect/HBoxContainer/LifeCount
onready var CoinCount: Label = $Control/TextureRect/HBoxContainer/CoinCount


func update_GUI(lives_left: int, coins: int):
    LifeCount.text = str(lives_left)
    CoinCount.text = str(coins)
