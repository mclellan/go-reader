extends CanvasLayer

var Lab = []
onready var Cam = get_node("../Camera2D")
onready var Streamer = get_node("/root/Main/Core/Streamer")

func _ready():
	for i in $VBoxContainer.get_children():
		Lab.append(i)
	
func _process(delta):
	Lab[0].text = str(Cam.position)
	Lab[1].text = str(Streamer.page_cur)
	Lab[2].text = str(Streamer.page_max)
	Lab[3].text = str(Streamer.pages_tracking)
