class_name Overlay
extends Control

## The game manager to reference
@export var game_manager: GameManager = null

# Private members
@onready var _points: Points = %Points
@onready var _ricochets: Ricochets = %Ricochets
@onready var _turns: Turns = %Turns

func _ready() -> void:
	assert(game_manager != null, "The specified game manager cannot be null.")
	call_deferred("_initialize")

func _initialize() -> void:
	_points.initialize(game_manager)
	_ricochets.initialize(game_manager)
	_turns.initialize(game_manager)

func _on_timer_timeout() -> void:
	pass # Replace with function body.
