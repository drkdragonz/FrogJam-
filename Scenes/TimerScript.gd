extends CanvasLayer

var ms = 0
var s = 0
var m = 0
export var TimerOn = true

onready var LabelTimer = get_node("TimeDisplayer")

func _physics_process(delta):
	if TimerOn == true:
		Timing()



func _on_Timer_timeout():
	ms += 1

func Timing():
	if ms > 9:
		ms = 0
		s += 1
	if s > 59:
		s = 0
		ms = 0
		m += 1
	
	LabelTimer.set_text(str("")+str(m)+":"+str(s)+":"+str(ms))
