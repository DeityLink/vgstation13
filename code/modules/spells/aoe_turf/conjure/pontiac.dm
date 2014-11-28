// Also called the firebird. Included here for people who want to find this spell

/atom/movable/spell/aoe_turf/conjure/pontiac
	name = "Chariot"
	desc = "This spell summons a glorious, flaming chariot that can move in space."

	charge_type = "charges"
	charge_max = 1
	school = "conjuration"
	clothes_req = 1
	invocation = "NO F'AT C'HX"
	invocation_type = "shout"
	range = 0

	summon_type = list(/obj/structure/stool/bed/chair/vehicle/wizmobile)
	duration = 0
	centcomm_cancast = 0 //Stop people from getting to centcomm