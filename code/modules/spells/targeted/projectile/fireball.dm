/atom/movable/spell/targeted/projectile/dumbfire/fireball
	name = "Fireball"
	desc = "This spell fires a fireball at a target and does not require wizard garb."

	proj_type = /obj/item/projectile/spell_projectile/fireball

	school = "evocation"
	charge_max = 100
	clothes_req = 0
	invocation = "ONI SOMA"
	invocation_type = "shout"
	range = 20
	cooldown_min = 20 //10 deciseconds reduction per rank
	include_user = 0

	duration = 200
	proj_step_delay = 1

	amt_dam_brute = 20
	amt_dam_fire = 25

	var/ex_severe = -1
	var/ex_heavy = 1
	var/ex_light = 2
	var/ex_flash = 5

/atom/movable/spell/targeted/projectile/dumbfire/fireball/prox_cast(var/list/targets, var/atom/movable/holder)
	targets = ..()
	cast(targets)
	explosion(get_turf(holder), ex_severe, ex_heavy, ex_light, ex_flash)

//PROJECTILE

/obj/item/projectile/spell_projectile/fireball
	name = "fireball"
	icon_state = "fireball"

/obj/item/projectile/spell_projectile/fireball/prox_cast(var/list/targets)
	carried.prox_cast(targets, src)
	spawn(10)
		del(src) //remove it

/obj/item/projectile/spell_projectile/fireball/OnDeath()
	prox_cast(carried.choose_targets())
	return