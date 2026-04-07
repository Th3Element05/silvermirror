	object_const_def
;	const MOUNTMORTAR1FINSIDE_BOULDER

MountMortar1FInside_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerPokemaniacMiller:
	trainer POKEMANIAC, MILLER, EVENT_BEAT_POKEMANIAC_MILLER, PokemaniacMillerSeenText, PokemaniacMillerBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext PokemaniacMillerAfterBattleText
	waitbutton
	closetext
	end

PokemaniacMillerSeenText:
	text "I'm not losing"
	line "this time!"
	done

PokemaniacMillerBeatenText:
	text "I lost to some"
	line "kid…?"
	done

PokemaniacMillerAfterBattleText:
	text "A while back, this"
	line "karate dude wanted"
	cont "to battle. He was"
	roll "ridiculously good."

	para "He just thrashed"
	line "us silly."

	para "He went in deeper"
	line "saying it was for"
	cont "his training. I"
	roll "wonder how he is?"
	done

TrainerSupernerdWaldo:
	trainer SUPER_NERD, WALDO, EVENT_BEAT_SUPER_NERD_WALDO, SupernerdWaldoSeenText, SupernerdWaldoBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SupernerdWaldoAfterBattleText
	waitbutton
	closetext
	end

SupernerdWaldoSeenText:
	text "Hey! JAMES!"
	done

SupernerdWaldoBeatenText:
	text "I mistook you for"
	line "someone else…"
	done

SupernerdWaldoAfterBattleText:
	text "I came to explore"
	line "MT.MORTAR, but I"
	cont "got separated from"
	roll "my partner…"

	para "Did you run into"
	line "a trainer with a"
	cont "PORYGON2?"
	done

MountMortar1FBoulder:
	jumpstd StrengthBoulderScript

MountMortar1FInsideHiddenMaxRepel:
	hiddenitem MAX_REPEL, EVENT_MOUNT_MORTAR_1F_INSIDE_HIDDEN_MAX_REPEL

MountMortar1FInsideEscapeRope:
	itemball ESCAPE_ROPE

MountMortar1FInsideMaxRevive:
	itemball MAX_REVIVE

MountMortar1FInsideHyperPotion:
	itemball HYPER_POTION

MountMortar1FInsideMaxPotion:
	itemball MAX_POTION

MountMortar1FInsideNugget:
	itemball NUGGET

MountMortar1FInsideIron:
	itemball IRON

MountMortar1FInsideUltraBall:
	itemball ULTRA_BALL

MountMortar1FInside_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11, 47, MOUNT_MORTAR_1F_OUTSIDE, 5 ;1
	warp_event 29, 47, MOUNT_MORTAR_1F_OUTSIDE, 6 ;2
	warp_event  5, 39, MOUNT_MORTAR_1F_OUTSIDE, 8 ;3
	warp_event 33, 41, MOUNT_MORTAR_1F_OUTSIDE, 9 ;4
	warp_event  3, 19, MOUNT_MORTAR_B1F, 1 ;5
	warp_event  9,  9, MOUNT_MORTAR_2F_INSIDE, 2 ;6

	def_coord_events

	def_bg_events
	bg_event 30, 11, BGEVENT_ITEM, MountMortar1FInsideHiddenMaxRepel

	def_object_events
	object_event 21, 43, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MountMortar1FBoulder, -1
	object_event 33, 43, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 3, TrainerPokemaniacMiller, -1 ;miller
	object_event 24, 28, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_TRAINER, 3, TrainerSupernerdWaldo, -1 ;markus
	object_event 35, 38, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortar1FInsideEscapeRope, EVENT_MOUNT_MORTAR_1F_INSIDE_ESCAPE_ROPE
	object_event 16, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortar1FInsideMaxRevive, EVENT_MOUNT_MORTAR_1F_INSIDE_MAX_REVIVE
	object_event 10, 27, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortar1FInsideHyperPotion, EVENT_MOUNT_MORTAR_1F_INSIDE_HYPER_POTION
	object_event 22, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortar1FInsideMaxPotion, EVENT_MOUNT_MORTAR_1F_INSIDE_MAX_POTION
	object_event 35, 19, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortar1FInsideNugget, EVENT_MOUNT_MORTAR_1F_INSIDE_NUGGET
	object_event  8, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortar1FInsideIron, EVENT_MOUNT_MORTAR_1F_INSIDE_IRON
	object_event 17, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortar1FInsideUltraBall, EVENT_MOUNT_MORTAR_1F_INSIDE_ULTRA_BALL
