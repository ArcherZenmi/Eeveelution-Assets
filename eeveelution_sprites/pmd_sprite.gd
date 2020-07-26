extends Sprite

export(String) var direction : String
export(String) var anim_type : String
var time : float = 0.0
var is_stopped : bool = false

enum Dir {RIGHT, DOWN_RIGHT, DOWN, DOWN_LEFT, LEFT, UP_LEFT, UP, UP_RIGHT}
const _Dir = ["right", "down right", "down", "down left", "left", "up left", "up", "up right"]
enum Anim {IDLE, MOVE, ATTACK, HURT}
const _Anim = ["idle", "move", "attack", "hurt"]

func _ready():
	$AnimationPlayer.play(direction+" "+anim_type)
	
func _change_direction(new_direction : String) -> void:
	if direction == new_direction:
		return
	time = $AnimationPlayer.get_current_animation_position()
	$AnimationPlayer.play(new_direction+" "+anim_type)
	$AnimationPlayer.advance(time)
	direction = new_direction
	
	if is_stopped:
		$AnimationPlayer.stop()

func change_direction(new_dir : int):
	_change_direction(_Dir[new_dir])

func change_anim_type(new_anim_enum : int) -> void:
	var new_anim_type = _Anim[new_anim_enum]
	
	if anim_type == new_anim_type:
		return
	time = 0.0
	$AnimationPlayer.play(direction+" "+new_anim_type)
	$AnimationPlayer.advance(0)
	anim_type = new_anim_type
	
	if is_stopped:
		$AnimationPlayer.stop()

func change_direction_vector(vector) -> void:
	var rotation_dir = vector.angle()
	
	if rotation_dir < -PI*7/8 or rotation_dir > PI*7/8:
		change_direction(Dir.LEFT)
	elif rotation_dir < -PI*5/8:
		change_direction(Dir.UP_LEFT)
	elif rotation_dir < -PI*3/8:
		change_direction(Dir.UP)
	elif rotation_dir < -PI*1/8:
		change_direction(Dir.UP_RIGHT)
	elif rotation_dir < PI*1/8:
		change_direction(Dir.RIGHT)
	elif rotation_dir < PI*3/8:
		change_direction(Dir.DOWN_RIGHT)
	elif rotation_dir < PI*5/8:
		change_direction(Dir.DOWN)
	elif rotation_dir < PI*7/8:
		change_direction(Dir.DOWN_LEFT)

func set_is_playing(playing):
	if playing:
		$AnimationPlayer.play()
		is_stopped = false
	else:
		$AnimationPlayer.stop()
		is_stopped = true
