	object_const_def

LavenderTown_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, LavenderTownFlypointCallback

LavenderTownFlypointCallback:
	setflag ENGINE_FLYPOINT_LAVENDER
	setmapscene CINNABAR_ISLAND, SCENE_CINNABARISLAND_NOOP
	endcallback

LavenderTownSuperNerdScript:
	jumptextfaceplayer LavenderTownSuperNerdText
LavenderTownSuperNerdText:
	text "#MON TOWER is"
	line "full of ghosts."

	para "I don't like to"
	line "go in there."
	done

;	text "GHOSTs appeared"
;	line "in #MON TOWER."
;
;	para "I think they're"
;	line "the spirits of"
;	cont "#MON that the"
;	cont "ROCKETs killed."
;	done
	
LavenderTownCooltrainerMScript:
	jumptextfaceplayer LavenderTownCooltrainerMText
LavenderTownCooltrainerMText:
	text "This town is known"
	line "as the grave site"
	cont "of #MON."

	para "Memorial services"
	line "are held in"
	cont "#MON TOWER."
	done

LavenderTownGirlScript:
	faceplayer
	opentext
	writetext LavenderTownGirlGhostQuestionText
	yesorno
	iftrue .BelieveGhosts
	writetext LavenderTownGirlGhostNoText
	waitbutton
	closetext
	end

.BelieveGhosts
	writetext LavenderTownGirlGhostYesText
	waitbutton
	closetext
	end

LavenderTownGirlGhostQuestionText:
	text "Do you believe in"
	line "ghosts?"
	done

LavenderTownGirlGhostYesText:
	text "Really? So there"
	line "are believers…"
	done

LavenderTownGirlGhostNoText:
	text "Hahaha, I guess"
	line "not."

	para "That white hand"
	line "on your shoulder,"
	cont "it's not real."
	done

LavenderTownSilphScopeSign:
	jumptext LavenderTownSilphScopeSignText
LavenderTownSilphScopeSignText:
	text "New SILPH SCOPE!"

	para "Make the Invisible"
	line "Plain to See!"

	para "SILPH CO."
	done

LavenderTownPokemonTowerSign:
	jumptext LavenderTownPokemonTowerSignText
LavenderTownPokemonTowerSignText:
	text "May the Souls of"
	line "#MON Rest Easy"

	para "#MON TOWER"
	done

LavenderTownPokemonHouseSign:
	jumptext LavenderTownPokemonHouseSignText
LavenderTownPokemonHouseSignText:
	text "LAVENDER VOLUNTEER"
	line "#MON HOUSE"
	done

LavenderTownSign:
	jumptext LavenderTownSignText
LavenderTownSignText:
	text "LAVENDER TOWN"

	para "The Noble Purple"
	line "Town"
	done

LavenderPokecenterSignText:
	jumpstd PokecenterSignScript

LavenderMartSignText:
	jumpstd MartSignScript

LavenderTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  5, LAVENDER_POKECENTER_1F, 1
	warp_event  7,  9, MR_FUJIS_HOUSE, 1
	warp_event  3, 13, LAVENDER_SPEECH_HOUSE, 1
	warp_event  7, 13, LAVENDER_NAME_RATER, 1
	warp_event 15, 13, LAVENDER_MART, 1
	warp_event 14,  5, POKEMON_TOWER_1F, 2

	def_coord_events

	def_bg_events
	bg_event  9,  3, BGEVENT_READ, LavenderTownSilphScopeSign
	bg_event 15,  7, BGEVENT_READ, LavenderTownPokemonTowerSign
	bg_event  5,  9, BGEVENT_READ, LavenderTownPokemonHouseSign
	bg_event 11,  9, BGEVENT_READ, LavenderTownSign
	bg_event  4,  5, BGEVENT_READ, LavenderPokecenterSignText
	bg_event 16, 13, BGEVENT_READ, LavenderMartSignText

	def_object_events
	object_event  8,  7, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, LavenderTownSuperNerdScript, -1
	object_event 15,  9, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, LavenderTownGirlScript, -1
	object_event  9, 10, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, LavenderTownCooltrainerMScript, -1
