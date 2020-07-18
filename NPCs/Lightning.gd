extends Node2D

const SPEED: int = 300

func _ready() -> void:
    set_as_toplevel(true)
    global_position = get_parent().global_position


func _process(delta: float) -> void:
    position.y += SPEED * delta
    handle_collision()


func handle_collision() -> void:
    var colliders = $Area2D.get_overlapping_bodies()
    for collider in colliders:
        if collider.name == "Player":
            handle_player_collision()
        destroy()


func handle_player_collision() -> void:
    get_tree().call_group("Gamestate", "hurt")

func _on_VisibilityNotifier2D_screen_exited() -> void:
    destroy()


func destroy() -> void:
    queue_free()
