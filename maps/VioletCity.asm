	object_const_def
	const VIOLETCITY_YLW_APRICORN
;	const VIOLETCITY_EARL

VioletCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, VioletCityFlypointAndRoute32Callback
	callback MAPCALLBACK_OBJECTS, VioletCityFruittrees

VioletCityFlypointAndRoute32Callback:
	setflag ENGINE_FLYPOINT_VIOLET
	clearevent EVENT_ROUTE_36_BATTLE
	setevent EVENT_ROUTE_36_OPEN
	endcallback

VioletCityFruittrees:
	checkflag ENGINE_DAILY_VIOLET_CITY_FRUIT
	iftrue .NoFruit
	appear VIOLETCITY_YLW_APRICORN
.NoFruit:
	endcallback

; fruit
VioletCity_YLWApricorn:
	opentext
	farwritetext _FruitBearingTreeText
	promptbutton
	getitemname STRING_BUFFER_3, YLW_APRICORN
	farwritetext _HeyItsFruitText
	promptbutton
	verbosegiveitem YLW_APRICORN
	iffalse .NoRoomInBag
	disappear VIOLETCITY_YLW_APRICORN
	setflag ENGINE_DAILY_ROUTE_33_FRUIT
.NoRoomInBag
	closetext
	end

VioletCity_NoFruit:
	farsjump Std_NoFruitScript

; scripts
;VioletCityEarlScript:
;	applymovement VIOLETCITY_EARL, VioletCitySpinningEarl_MovementData
;	faceplayer
;	opentext
;	writetext Text_EarlAsksIfYouBeatFalkner
;	yesorno
;	iffalse .FollowEarl
;	sjump .PointlessJump
;
;.PointlessJump:
;	writetext Text_VeryNiceIndeed
;	waitbutton
;	closetext
;	end
;
;.FollowEarl:
;	writetext Text_FollowEarl
;	waitbutton
;	closetext
;	playmusic MUSIC_SHOW_ME_AROUND
;	follow VIOLETCITY_EARL, PLAYER
;	applymovement VIOLETCITY_EARL, VioletCityFollowEarl_MovementData
;	turnobject PLAYER, UP
;	applymovement VIOLETCITY_EARL, VioletCitySpinningEarl_MovementData
;	stopfollow
;	special RestartMapMusic
;	opentext
;	writetext Text_HereTeacherIAm
;	waitbutton
;	closetext
;	applymovement VIOLETCITY_EARL, VioletCitySpinningEarl_MovementData
;	applymovement VIOLETCITY_EARL, VioletCityFinishFollowEarl_MovementData
;	playsound SFX_ENTER_DOOR
;	disappear VIOLETCITY_EARL
;	clearevent EVENT_EARLS_ACADEMY_EARL
;	waitsfx
;	end
;
;Text_EarlAsksIfYouBeatFalkner:
;	text "Hello!"
;	line "You are trainer?"
;
;	para "Battle GYM LEADER,"
;	line "win you did?"
;	done
;
;Text_VeryNiceIndeed:
;	text "Ooh, la la!"
;	line "Very indeed nice!"
;	done
;
;Text_FollowEarl:
;	text "Is that so? Then"
;	line "study shall you!"
;	cont "Follow me!"
;	done
;
;Text_HereTeacherIAm:
;	text "Here, teacher I"
;	line "am. Good it is"
;	cont "you study here!"
;	done

VioletCityFollowEarl_MovementData:
	big_step DOWN
	big_step DOWN
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	big_step DOWN
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	big_step UP
	turn_head DOWN
	step_end

VioletCityFinishFollowEarl_MovementData:
	step UP
	step_end

VioletCitySpinningEarl_MovementData:
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	step_end

VioletCityLassScript:
	jumptextfaceplayer VioletCityLassText
VioletCityLassText:
	text "Ghosts are rumored"
	line "to appear in"
	cont "SPROUT TOWER."

	para "They said normal-"
	line "type attacks don't"
	cont "effect ghosts."
	done

VioletCityGrampsScript:
	jumptextfaceplayer VioletCityGrampsText
VioletCityGrampsText:
	text "FALKNER, from the"
	line "VIOLET #MON"
	cont "GYM, is a fine"
	cont "trainer!"

	para "He inherited his"
	line "father's gym and"
;	cont "has done a great"
;	cont "job with it."
;	done
	cont "I'm sure he'll do"
	cont "a great job."
	done

VioletCityYoungsterScript:
	jumptextfaceplayer VioletCityYoungsterText
VioletCityYoungsterText:
	text "There was an odd"
	line "tree on ROUTE 32."

	para "When I touched it"
	line "it squirmed and"
	cont "danced around!"
	done

;VioletCitySuperNerdScript:
;	jumptextfaceplayer VioletCitySuperNerdText
;VioletCitySuperNerdText:
;	text "Hey, you're a"
;	line "#MON trainer?"
;
;	para "If you beat the"
;	line "GYM LEADER here,"
;	cont "you'll be ready"
;	cont "for prime time!"
;	done

VioletCitySign:
	jumptext VioletCitySignText
VioletCitySignText:
	text "VIOLET CITY"

	para "The City of"
	line "Nostalgic Scents"
	done

VioletGymSign:
	jumptext VioletGymSignText
VioletGymSignText:
	text "VIOLET CITY"
	line "#MON GYM"
	cont "LEADER: FALKNER"

	para "The Elegant Master"
	line "of Flying #MON"
	done

SproutTowerSign:
	jumptext SproutTowerSignText
SproutTowerSignText:
	text "SPROUT TOWER"
	done

VioletCityTrainerHouseSign:
	jumptext VioletCityTrainerHouseSignText
VioletCityTrainerHouseSignText:
	text "VIOLET CITY"
	line "TRAINER HOUSE"
	done

VioletCityPokecenterSign:
	jumpstd PokecenterSignScript

VioletCityMartSign:
	jumpstd MartSignScript

VioletCityHiddenHyperPotion:
	hiddenitem HYPER_POTION, EVENT_VIOLET_CITY_HIDDEN_HYPER_POTION

VioletCityPPUp:
	itemball PP_UP

VioletCityRareCandy:
	itemball RARE_CANDY

VioletCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 17, VIOLET_MART, 2
	warp_event 18, 17, VIOLET_GYM, 1
	warp_event 30, 17, TRAINER_HOUSE_1F, 1 ; EARLS_POKEMON_ACADEMY, 1
	warp_event  3, 15, VIOLET_NICKNAME_SPEECH_HOUSE, 1
	warp_event 31, 25, VIOLET_POKECENTER_1F, 1
	warp_event 21, 29, VIOLET_KYLES_HOUSE, 1
	warp_event 23,  5, SPROUT_TOWER_1F, 1
	warp_event 39, 24, ROUTE_31_VIOLET_GATE, 1
	warp_event 39, 25, ROUTE_31_VIOLET_GATE, 2

	def_coord_events

	def_bg_events
	bg_event 14, 29, BGEVENT_READ, VioletCity_NoFruit
	bg_event 24, 20, BGEVENT_READ, VioletCitySign
	bg_event 19, 17, BGEVENT_READ, VioletGymSign
	bg_event 24,  8, BGEVENT_READ, SproutTowerSign
	bg_event 27, 17, BGEVENT_READ, VioletCityTrainerHouseSign
	bg_event 32, 25, BGEVENT_READ, VioletCityPokecenterSign
	bg_event 10, 17, BGEVENT_READ, VioletCityMartSign
	bg_event 37, 14, BGEVENT_ITEM, VioletCityHiddenHyperPotion

	def_object_events
	object_event 14, 29, SPRITE_APRICORN, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, VioletCity_YLWApricorn, EVENT_VIOLET_CITY_YLW_APRICORN
;	object_event 13, 16, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, VioletCityEarlScript, EVENT_VIOLET_CITY_EARL
	object_event 24, 14, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, VioletCityLassScript, -1
	object_event 17, 20, SPRITE_GRAMPS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VioletCityGrampsScript, -1
	object_event  5, 18, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, VioletCityYoungsterScript, -1
;	object_event 24, 15, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VioletCitySuperNerdScript, -1
	object_event  4,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VioletCityPPUp, EVENT_VIOLET_CITY_PP_UP
	object_event 35,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VioletCityRareCandy, EVENT_VIOLET_CITY_RARE_CANDY
