extends AnimationPlayer


func _on_animation_player_animation_finished(anim_name):
	if anim_name == "move_camera" and OS.has_feature("movie"):
		print("Done recording movie.")
		get_tree().quit()
