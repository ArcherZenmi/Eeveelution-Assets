extends CanvasItem

func _ready():
	if has_node("AnimationPlayer"):
		connect("visibility_changed", self, "start")

func start():
	# Only runs if shown rather than hidden
	if not is_visible():
		return
	
	if not $AnimationPlayer.is_playing():
		$AnimationPlayer.play("start")
