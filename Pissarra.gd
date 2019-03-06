extends TextureRect

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	#var prompt = ["Godot", "Barcelona"]
	#var story = "Hi havia una vegada %s que va anar a %s"
	#print (story % prompt)
	var prompt = ["Yann", "pizza", "full", "sad", "cabbages"]
	var story = "Once upon a time a %s ate a %s and felt very %s. It was a %s day for all good %s."
	print (story % prompt)
	get_node("StoryText").set_text(story % prompt)
	#$Pissarra/StoryText.text = story % prompt

func _on_TextureButton_pressed():
	var new_text = get_node("TextBox").get_text()
	_on_TextBox_text_entered(new_text)

func _on_TextBox_text_entered(new_text):
	get_node("StoryText").set_text(new_text)
	get_node("Textbox").set_text("")



#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


