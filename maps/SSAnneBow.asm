	object_const_def

SSAnneBow_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerSailorEugene:
	trainer SAILOR, EUGENE, EVENT_BEAT_SAILOR_EUGENE, SailorEugeneSeenText, SailorEugeneBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SailorEugeneAfterBattleText
	waitbutton
	closetext
	end

SailorEugeneSeenText:
	text "Hey matey!"

	para "Let's do a little"
	line "jig!"
	done

SailorEugeneBeatenText:
	text "You're"
	line "impressive!"
	done

SailorEugeneAfterBattleText:
	text "How many kinds of"
	line "#MON do you"
	cont "think there are?"
	done

TrainerSailorHarry:
	trainer SAILOR, HARRY, EVENT_BEAT_SAILOR_HARRY, SailorHarrySeenText, SailorHarryBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SailorHarryAfterBattleText
	waitbutton
	closetext
	end

SailorHarrySeenText:
	text "Ahoy there!"
	line "Are you seasick?"
	done

SailorHarryBeatenText:
	text "I was"
	line "just careless!"
	done

SailorHarryAfterBattleText:
	text "My Pa said there"
	line "are 150 kinds of"
	cont "#MON. I think"
	cont "there are more."
	done

; npc
SSAnneBowSuperNerdScript:
	jumptextfaceplayer SSAnneBowSuperNerdText
SSAnneBowSuperNerdText:
	text "The party's over."
	line "The ship will be"
	cont "departing soon."
	done

SSAnneBowSailorScript:
	jumptextfaceplayer SSAnneBowSailorText
SSAnneBowSailorText:
	text "Scrubbing decks"
	line "is hard work!"
	done

SSAnneBowCooltrainerMScript:
	jumptextfaceplayer SSAnneBowCooltrainerMText
SSAnneBowCooltrainerMText:
	text "Urf. I feel ill."

	para "I stepped out to"
	line "get some air."
	done

SSAnneBow_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 12,  6, SS_ANNE_2F, 2 ; 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  2, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnneBowSuperNerdScript, -1
	object_event  4,  4, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSailorEugene, -1
	object_event 10,  8, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSailorHarry, -1
	object_event  4,  9, SPRITE_SAILOR, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnneBowSailorScript, -1
	object_event  7, 11, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnneBowCooltrainerMScript, -1
