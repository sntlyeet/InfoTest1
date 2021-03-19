extends Control

var scene_path_to_load
func _ready():
	for button in $Menu/centerContainer/ButtonContainer.get_children():
		button.connect("pressed", self, "_on_Button_pressed", [button.scene_to_load])
		
		
func _on_Button_pressed(scene_to_load):
	scene_path_to_load = scene_to_load
	$"FadeIn Transition".show()
	$"FadeIn Transition".fade_in()


func _on_FadeIn_Transition_fade_finished():
	get_tree().change_scene(scene_path_to_load)