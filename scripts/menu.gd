extends VBoxContainer

func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://root.tscn")


func _on_quit_pressed() -> void:
	get_tree().root.propagate_notification(NOTIFICATION_WM_CLOSE_REQUEST)

func _notification(notif):
	if notif == NOTIFICATION_WM_CLOSE_REQUEST:
		get_tree().quit()
