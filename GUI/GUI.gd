extends CanvasLayer

onready var LifeCount: Label = $Control/TextureRect/HBoxContainer/LifeCount


func update_lives(lives_left: int):
    LifeCount.text = str(lives_left)
