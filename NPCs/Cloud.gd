extends Node2D

onready var RayCast: RayCast2D = $Sprite/RayCast2D
onready var Lightning: Resource = load("res://NPCs/Lightning.tscn")
onready var Timer: Timer = $Sprite/Timer

var timeout: bool = false

func _process(delta: float) -> void:
    if RayCast.is_colliding():
        fire()


func fire() -> void:
    if not timeout:
        RayCast.add_child(Lightning.instance())
        Timer.start()
        timeout = true



func _on_Timer_timeout() -> void:
    timeout = false
