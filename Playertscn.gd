extends KinematicBody2D

var velocidad = Vector2()
var gravedad = 9.81
var masa = 2




func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		velocidad.x = +200
		$Animaciones.play("Caminar")
		$Animaciones.flip_h = false
	elif Input.is_action_pressed("ui_left"):
		velocidad.x = -200
		$Animaciones.play("Caminar")
		$Animaciones.flip_h = true
	elif Input.is_action_pressed("ui_up") and is_on_floor():
		velocidad.y = -800
		
	else:
		$Animaciones.play("Default")
		
	if not is_on_floor():
		$Animaciones.play("Salto Normal")
	if Input.is_action_just_released("ui_up"):
		$Animaciones.play("Satlo Doble")
		
		






	velocidad.y = velocidad.y + masa*gravedad
	velocidad = move_and_slide(velocidad, Vector2.UP)

	velocidad.x = lerp(velocidad.x, 0, 0.25)











pass
