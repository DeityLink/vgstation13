/obj/item/clothing/mask/balaclava
	name = "balaclava"
	desc = "LOADSAMONEY"
	icon_state = "balaclava"
	item_state = "balaclava"
	flags = FPRINT
	flags_inv = HIDEFACE|HIDEHAIR
	w_class = 2
	species_fit = list("Vox")

/obj/item/clothing/mask/luchador
	name = "Luchador Mask"
	desc = "Worn by robust fighters, flying high to defeat their foes!"
	icon_state = "luchag"
	item_state = "luchag"
	flags = FPRINT|MASKINTERNALS
	flags_inv = HIDEFACE|HIDEHAIR
	w_class = 2
	siemens_coefficient = 3.0
	species_fit = list("Vox")

/obj/item/clothing/mask/luchador/treat_mask_message(var/message)
	message = replacetext(message, "captain", "CAPITÁN")
	message = replacetext(message, "station", "ESTACIÓN")
	message = replacetext(message, "sir", "SEÑOR")
	message = replacetext(message, "the ", "el ")
	message = replacetext(message, "my ", "mi ")
	message = replacetext(message, "is ", "es ")
	message = replacetext(message, "it's", "es")
	message = replacetext(message, "friend", "amigo")
	message = replacetext(message, "buddy", "amigo")
	message = replacetext(message, "hello", "hola")
	message = replacetext(message, " hot", " caliente")
	message = replacetext(message, " very ", " muy ")
	message = replacetext(message, "sword", "espada")
	message = replacetext(message, "library", "biblioteca")
	message = replacetext(message, "traitor", "traidor")
	message = replacetext(message, "wizard", "mago")
	message = uppertext(message)	//Things end up looking better this way (no mixed cases), and it fits the macho wrestler image.
	if(prob(25))
		message += " OLE!"

/obj/item/clothing/mask/luchador/tecnicos
	name = "Tecnicos Mask"
	desc = "Worn by robust fighters who uphold justice and fight honorably."
	icon_state = "luchador"
	item_state = "luchador"
	species_fit = list("Vox")

/obj/item/clothing/mask/luchador/rudos
	name = "Rudos Mask"
	desc = "Worn by robust fighters who are willing to do anything to win."
	icon_state = "luchar"
	item_state = "luchar"
	species_fit = list("Vox")