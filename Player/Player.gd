extends KinematicBody2D

const SPEED: int = 1500
const GRAVITY: int = 150

const UP_DIRECTION: Vector2 = Vector2.UP

const JUMP_SPEED: int = 3500
const JUMP_BOOST_MULTIPLIER: float = 1.5

const WORLD_LIMIT: int = 4000

var motion: Vector2 = Vector2.ZERO

signal animate
signal death

func _physics_process(delta: float):
    apply_gravity()

    jump()
    move()
    animate()

    move_and_slide(motion, UP_DIRECTION)


func apply_gravity():
    if position.y > WORLD_LIMIT:
        end_game()
    if is_on_floor():
        motion.y = 0
    elif is_on_ceiling():
        motion.y = Vector2.DOWN.y
    else:
        motion.y += GRAVITY


func jump():
    if Input.is_action_pressed("jump") and is_on_floor():
        motion.y -= JUMP_SPEED
        play_jump_sound()


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
    emit_signal("animate", motion) 


func end_game():
    get_tree().call_group("Gamestate", "end_game")

func hurt():
    position.y -= 1
    yield(get_tree(), "idle_frame")

    motion.y -= JUMP_SPEED

    play_hurt_sound()


func play_jump_sound():
    $JumpSFX.play()


func play_hurt_sound():
    $HurtSFX.play()


func boost():
    position.y -= 1
    yield(get_tree(), "idle_frame")

    motion.y -= JUMP_SPEED * JUMP_BOOST_MULTIPLIER
