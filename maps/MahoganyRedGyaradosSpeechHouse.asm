	object_const_def

MahoganyRedGyaradosSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

MahoganyRedGyaradosSpeechHouseBlackBeltScript:
	jumptextfaceplayer MahoganyRedGyaradosSpeechHouseBlackBeltText
MahoganyRedGyaradosSpeechHouseBlackBeltText:
	text "I heard a gold"
	line "#MON was seen"
	cont "in the lake."

	para "But LAKE OF RAGE"
	line "is just full of"
	cont "MAGIKARP…"

	para "Aren't MAGIKARP"
	line "usually orange?"
	done

;	text "I heard that a red"
;	line "GYARADOS appeared"
;	cont "at the LAKE."
;
;	para "That's odd, since"
;	line "even ordinary"
;
;	para "GYARADOS are rare"
;	line "in that lake…"
;	done

MahoganyRedGyaradosSpeechHouseTeacherScript:
	jumptextfaceplayer MahoganyRedGyaradosSpeechHouseTeacherText
MahoganyRedGyaradosSpeechHouseTeacherText:
	text "My favorite radio"
	line "program? I'd say"
	cont "#MON MUSIC."
	done

MahoganyRedGyaradosSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, MAHOGANY_TOWN, 2
	warp_event  3,  7, MAHOGANY_TOWN, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MahoganyRedGyaradosSpeechHouseBlackBeltScript, -1
	object_event  6,  5, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MahoganyRedGyaradosSpeechHouseTeacherScript, -1
