extends KinematicBody2D

var motion: Vector2 = Vector2(0, 0)

const SPEED: int = 1500
const GRAVITY: int = 300

const UP_DIRECTION: Vector2 = Vector2(0, -1)

const JUMP_SPEED: int = 5000 


func _physics_process(delta: float):
    apply_gravity()

    jump()
    move()
    animate()

    move_and_slide(motion, UP_DIRECTION)


func apply_gravity():
    if is_on_floor():
        motion.y = 0
    else:
        motion.y += GRAVITY


func jump():
    if Input.is_action_pressed("jump") and is_on_floor():
        motion.y -= JUMP_SPEED


func move():
    if (Input.is_action_pressed("left") && Input.is_action_pressed("right")):
        motion.x = 0
    elif Input.is_action_pressed("left"):
        motion.x = -SPEED
    elif Input.is_action_pressed("right"):
        motion.x = SPEED
    else:
        motion.x = 0


func animate():
    if motion.y < 0:
        $AnimatedSprite.play("jump")
    if motion.x > 0:   
        $AnimatedSprite.flip_h = false
        $AnimatedSprite.play("walk")
    elif motion.x < 0:
        $AnimatedSprite.flip_h = true
        $AnimatedSprite.play("walk")
    else:
        $AnimatedSprite.play("idle")
