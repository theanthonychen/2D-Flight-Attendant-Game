extends Label

var resourceCount = 0
var isPlayerInCafe = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	
	# interact
	if isPlayerInCafe and Input.is_action_just_pressed("interact"):
		print("cafe interact")
		on_cafe_interact()

func on_cafe_interact():
	resourceCount += 1
	text = "Resource: %s" % resourceCount


func _on_cafe_body_entered(_body):
	isPlayerInCafe = true
	print("Player in Cafe")

func _on_cafe_body_exited(_body):
	isPlayerInCafe = false
	print("Player left Cafe")
