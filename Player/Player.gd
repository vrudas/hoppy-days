extends KinematicBody2D

var motion: Vector2 = Vector2(0, 0)
const SPEED: int = 500

func _physics_process(delta: float):
    if (Input.is_action_pressed("left") && Input.is_action_pressed("right")):
        motion.x = 0
    elif Input.is_action_pressed("left"):
        motion.x = -SPEED
    elif Input.is_action_pressed("right"):
        motion.x = SPEED
    else:
        motion.x = 0

    move_and_slide(motion)
