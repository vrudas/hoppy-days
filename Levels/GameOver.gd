extends Control


func _on_RestartButton_pressed() -> void:
    restart_game()

func _process(delta) -> void:
    if Input.is_key_pressed(KEY_ESCAPE):
        get_tree().quit()

    if Input.is_key_pressed(KEY_SPACE):
        restart_game()


func restart_game() -> void:
    get_tree().change_scene("res://Levels/Level1.tscn")
