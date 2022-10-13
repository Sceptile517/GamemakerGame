/// @description Insert description here
// You can write your code in this editor

if keyboard_check_pressed(ord("A")){
	L_pressed = true
	L_hold = true
}
if keyboard_check_released(ord("A")){
	L_released = true
	L_hold = false
}
if keyboard_check_pressed(ord("D")){
	R_pressed = true
	R_hold = true
}
if keyboard_check_released(ord("D")){
	R_released = true
	R_hold = false
}
if keyboard_check_pressed(vk_space){
	action_1_pressed = true
	action_1_hold = true
}
if keyboard_check_released(vk_space){
	action_1_released = true
	action_1_hold = false
}

if collision_circle(x,y,20,obj_foe,false,true){

	room_restart()

}

// Inherit the parent event
event_inherited();

L_pressed = false
L_released = false
R_pressed = false
R_released = false
action_1_pressed = false
action_1_released = false


if collision_circle(x,y,12,obj_shot,false,true){
	
	room_restart()

}

if collision_circle(x,y,16,obj_collectable,false,true){
	
	whichCollectable = instance_nearest(x,y,obj_collectable)
	instance_destroy(whichCollectable)

}

collectableNum = instance_number(obj_collectable)

if collectableNum <= 0{
	if collision_circle(x,y,12,obj_teleporter,false,true){

		room_goto_next()

	}
}


if keyboard_check_pressed(vk_left){
	room_goto_previous()
}
if keyboard_check_pressed(vk_right){
	room_goto_next()
}