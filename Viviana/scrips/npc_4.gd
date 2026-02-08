extends Area2D

@onready var question_mark = $QuestionMark

const Viviananpc = preload("res://Viviana/Dialogos/Viviananpcuntitled.dialogue")

var is_player_close = false
var is_dialogue_active = false

var caminar = true

func _ready() -> void:
	DialogueManager.dialogue_started.connect(_on_dialogue_started)
	DialogueManager.dialogue_ended.connect(_on_dialogue_ended)


func _process(delta: float) -> void:
	if is_player_close and Input.is_action_just_pressed("ui_accept") and not is_dialogue_active:
		DialogueManager.show_dialogue_balloon(Viviananpc, "start")


func _on_area_entered(area: Area2D) -> void:
	question_mark.visible = true
	is_player_close = true


func _on_area_exited(area: Area2D) -> void:
	question_mark.visible = false
	is_player_close = false


func _on_dialogue_started(dialogue):
	is_dialogue_active = true


func _on_dialogue_ended(dialogue):
	await get_tree().create_timer(0.2).timeout
	is_dialogue_active = false
