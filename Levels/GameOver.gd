extends Control


func _on_RestartButton_pressed():
    get_tree().change_scene("res://Levels/Level1.tscn")

func _process(delta):
    if Input.is_key_pressed(KEY_ESCAPE):
        get_tree().quit()
