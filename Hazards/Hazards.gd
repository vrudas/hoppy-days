extends Area2D


func _on_SpikeTop_body_entered(_body: Node):
    get_tree().call_group("Gamestate", "hurt")
