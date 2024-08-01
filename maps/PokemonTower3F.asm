	object_const_def

PokemonTower3F_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerMediumMartha:
	trainer MEDIUM, MARTHA, EVENT_BEAT_MEDIUM_MARTHA, MediumMarthaSeenText, MediumMarthaBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext MediumMarthaAfterBattleText
	waitbutton
	closetext
	end

MediumMarthaSeenText:
	text "Urrg...Awaa..."
	line "Huhu...graa.."
	done

MediumMarthaBeatenText:
	text "Hwa!"
	line "I'm saved!"
	done

MediumMarthaAfterBattleText:
	text "The GHOST can be"
	line "identified by the"
	cont "SILPH SCOPE."
	done

TrainerMediumGrace:
	trainer MEDIUM, GRACE, EVENT_BEAT_MEDIUM_GRACE, MediumGraceSeenText, MediumGraceBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext MediumGraceAfterBattleText
	waitbutton
	closetext
	end

MediumGraceSeenText:
	text "Kekeke...."
	line "Kwaaah!"
	done

MediumGraceBeatenText:
	text "Hmm?"
	line "What am I doing?"
	done

MediumGraceAfterBattleText:
	text "Sorry! I was"
	line "possessed!"
	done

TrainerMediumBethany:
	trainer MEDIUM, BETHANY, EVENT_BEAT_MEDIUM_BETHANY, MediumBethanySeenText, MediumBethanyBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext MediumBethanyAfterBattleText
	waitbutton
	closetext
	end

MediumBethanySeenText:
	text "Be gone!"
	line "Evil spirit!"
	done

MediumBethanyBeatenText:
	text "Whew!"
	line "The spirit left!"
	done

MediumBethanyAfterBattleText:
	text "My friends were"
	line "possessed too!"
	done

PokemonTower3FEscapeRope:
	itemball ESCAPE_ROPE

PokemonTower3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 16,  9, POKEMON_TOWER_4F, 2 ; 1
	warp_event  1,  9, POKEMON_TOWER_2F, 1 ; 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  9,  3, SPRITE_GRANNY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerMediumMartha, -1
	object_event  7,  8, SPRITE_GRANNY, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerMediumGrace, -1
	object_event  8, 13, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerMediumBethany, -1
	object_event 10,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, PokemonTower3FEscapeRope, EVENT_POKEMON_TOWER_3F_ESCAPE_ROPE
