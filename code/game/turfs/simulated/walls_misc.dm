/turf/simulated/wall/cult
	name = "wall"
	desc = "The patterns engraved on the wall seem to shift as you try to focus on them. You feel sick"
	icon_state = "cult"
	walltype = "cult"
	dismantle_type = /turf/simulated/floor/engine/cult
	girder_type = /obj/structure/cultgirder

/turf/simulated/wall/cult/cultify()
	return

/turf/simulated/wall/cult/dismantle_wall(devastated = 0, explode = 0)
	if(!devastated)
		var/obj/effect/decal/cleanable/blood/B = getFromPool(/obj/effect/decal/cleanable/blood, get_turf(src))
		B.New(src)
		new girder_type(src)
	else
		var/obj/effect/decal/cleanable/blood/B = getFromPool(/obj/effect/decal/cleanable/blood, get_turf(src))
		B.New(src)
		new /obj/effect/decal/remains/human(src)

	for(var/obj/O in src.contents) //Eject contents!
		if(istype(O,/obj/structure/sign/poster))
			var/obj/structure/sign/poster/P = O
			P.roll_and_drop(src)
		else
			O.loc = src

	ChangeTurf(dismantle_type)

/turf/simulated/wall/cult/attack_construct(mob/user as mob)
	if(istype(user,/mob/living/simple_animal/construct/builder) && user.Adjacent(src, MAX_ITEM_DEPTH))
		dismantle_wall(1)
		return 1
	return 0
