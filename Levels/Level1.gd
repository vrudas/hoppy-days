extends Node2D

const BACKGROUND_MUSIC: AudioStream = preload("res://SFX/Summer_Park.ogg")


func _ready():
    $BackgroundMusic.stream = BACKGROUND_MUSIC
    $BackgroundMusic.play()
