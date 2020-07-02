extends Node2D

export var play_taken_animation: bool

var taken: bool = false

func _on_Area2D_body_entered(body):
    if not taken:
        taken = true

        $AudioStreamPlayer.play()
        if play_taken_animation:
            $AnimationPlayer.play("die")
        else:
            $Sprite.hide()
            yield($AudioStreamPlayer, "finished")
            die()

        get_tree().call_group("Gamestate", "coin_up")


func die():
    queue_free()
