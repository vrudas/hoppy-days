extends Node2D

const TARGET_COINS_TO_BONUS_LIVE: int = 10

var lives: int = 3
var coins: int = 0


func _ready():
    add_to_group("Gamestate")

    update_GUI()


func hurt():
    lives -= 1

    $Player.hurt()
    update_GUI()

    if lives < 0:
        end_game()


func update_GUI():
    get_tree().call_group("GUI", "update_GUI", lives, coins)


func coin_up():
    coins += 1
    update_GUI()

    var multiple_of_coins = (coins % TARGET_COINS_TO_BONUS_LIVE) == 0
    if multiple_of_coins:
        life_up()


func life_up():
    lives += 1
    update_GUI()


func end_game():
    get_tree().change_scene("res://Levels/GameOver.tscn")


func win_game():
    get_tree().change_scene("res://Levels/Victory.tscn")
