extends Area2D


func _on_SpikeTop_body_entered(body: Node):
    body.hurt()
