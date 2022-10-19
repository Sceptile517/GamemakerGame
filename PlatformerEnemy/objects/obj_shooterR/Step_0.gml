/// @description Insert description here
// You can write your code in this editor


rateFire += 1.8

if rateFire >= fireMax{

	rateFire = 0
	instance_create_depth(x,y,0,obj_shot)
		whichShot = instance_nearest(x,y,obj_shot)
		whichShot.leftRight = leftRight

}

if isShooting{
	if obj_player > obj_shooterR {
		leftRight = true
		image_xscale = -1
	}else{
		leftRight = false
		image_xscale = 1
	}
}

if distance_to_object(obj_player) <= 80{
	isShooting = true
}else{
	isShooting = false
}