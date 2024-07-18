	object_const_def
	const ROCKETHIDEOUTB4F_GIOVANNI
	const ROCKETHIDEOUTB4F_LIFT_KEY
	const ROCKETHIDEOUTB4F_SILPH_SCOPE

RocketHideoutB4F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, .RocketHideoutB4FDoorCallback

.RocketHideoutB4FDoorCallback:
	checkevent EVENT_OPENED_ROCKET_HIDEOUT_B4F_DOOR
	iffalse .DoorClosed
	changeblock 16, 12, $65 ; door open
.DoorClosed:
	endcallback

;RocketHideoutB4FGiovanniScript:
TrainerRocketHideoutGiovanni:
	trainer ROCKET_BOSS, GIOVANNI_HIDEOUT, EVENT_BEAT_GIOVANNI_HIDEOUT, RocketHideoutGiovanniSeenText, RocketHideoutGiovanniBeatenText, 0, .Script
.Script:
	opentext
	writetext RocketHideoutGiovanniAfterBattleText
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	disappear ROCKETHIDEOUTB4F_GIOVANNI
	playsound SFX_ESCAPE_ROPE
	waitsfx
	appear ROCKETHIDEOUTB4F_SILPH_SCOPE
	special FadeInQuickly
	setevent EVENT_CELADON_CITY_ROCKETS
	end

RocketHideoutGiovanniSeenText:
	text "So! I must say, I"
	line "am impressed you"
	cont "got here!"
	done

RocketHideoutGiovanniBeatenText:
	text "WHAT!"
	line "This cannot be!"
	done

RocketHideoutGiovanniAfterBattleText:
	text "I see that you"
	line "raise #MON"
	cont "with utmost care."

	para "A child like you"
	line "would never"
	cont "understand what I"
	cont "hope to achieve."

	para "I shall step"
	line "aside this time!"

	para "I hope we meet"
	line "again..."
	done
	
TrainerRocketGruntF3:
	trainer GRUNTF, GRUNTF_3, EVENT_BEAT_GRUNTF_3, RocketGruntF3SeenText, RocketGruntF3BeatenText, 0, .Script
.Script:
	checkevent EVENT_GOT_ROCKET_HIDEOUT_LEFT_KEY
	iftrue .Skip
	appear ROCKETHIDEOUTB4F_LIFT_KEY
	setevent EVENT_GOT_ROCKET_HIDEOUT_LEFT_KEY
.Skip
	jumptextfaceplayer RocketGruntF3AfterBattleText

RocketGruntF3SeenText:
	text "The elevator"
	line "doesn't work? Who"
	cont "has the LIFT KEY?"
	done

RocketGruntF3BeatenText:
	text "No!"
	done

RocketGruntF3AfterBattleText:
	text "Oh no! I dropped"
	line "the LIFT KEY!"
	done

TrainerRocketExecutiveM1:
	trainer EXECUTIVEM, EXECUTIVEM_1, EVENT_BEAT_EXECUTIVEM_1, RocketExecutiveM1SeenText, RocketExecutiveM1BeatenText, 0, .Script
.Script:
	checkevent EVENT_OPENED_ROCKET_HIDEOUT_B4F_DOOR
	iftrue .Skip
	checkevent EVENT_BEAT_EXECUTIVEF_1
	iffalse .Skip
	changeblock 16, 12, $65 ; door open
	reloadmappart
	setevent EVENT_OPENED_ROCKET_HIDEOUT_B1F_DOOR
.Skip
	jumptextfaceplayer RocketExecutiveM1AfterBattleText

RocketExecutiveM1SeenText:
	text "I know you! You"
	line "ruined our plans"
	cont "at MT.MOON!"
	done

RocketExecutiveM1BeatenText:
	text "Burned again!"
	done

RocketExecutiveM1AfterBattleText:
	text "Do you have"
	line "something against"
	cont "TEAM ROCKET?"
	done

TrainerRocketExecutiveF1:
	trainer EXECUTIVEF, EXECUTIVEF_1, EVENT_BEAT_EXECUTIVEF_1, RocketExecutiveF1SeenText, RocketExecutiveF1BeatenText, 0, .Script
.Script:
	checkevent EVENT_OPENED_ROCKET_HIDEOUT_B4F_DOOR
	iftrue .Skip
	checkevent EVENT_BEAT_EXECUTIVEM_1
	iffalse .Skip
	changeblock 16, 12, $65 ; door open
	reloadmappart
	setevent EVENT_OPENED_ROCKET_HIDEOUT_B4F_DOOR
.Skip
	jumptextfaceplayer RocketExecutiveF1AfterBattleText

RocketExecutiveF1SeenText:
	text "How can you not"
	line "see the beauty of"
	cont "our evil?"
	done

RocketExecutiveF1BeatenText:
	text "Ayaya!"
	done

RocketExecutiveF1AfterBattleText:
	text "BOSS! I'm sorry I"
	line "failed you!"
	done

RocketHideoutB4FLiftKey:
	itemball LIFT_KEY

RocketHideoutB4FSilphScope:
	itemball SILPH_SCOPE

RocketHideoutB4FTMRazorWind:
	itemball TM_RAZOR_WIND

RocketHideoutB4FHPUp:
	itemball HP_UP

RocketHideoutB4FIron:
	itemball IRON

RocketHideoutB4FHiddenSuperPotion:
	hiddenitem SUPER_POTION, EVENT_ROCKET_HIDEOUT_B4F_HIDDEN_SUPER_POTION

RocketHideoutB4F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17, 17, ROCKET_HIDEOUT_ELEVATOR, 1 ; 1
	warp_event 16, 17, ROCKET_HIDEOUT_ELEVATOR, 1 ; 2
	warp_event 11, 10, ROCKET_HIDEOUT_B3F, 4 ; 3

	def_coord_events

	def_bg_events
	bg_event 17,  1, BGEVENT_ITEM, RocketHideoutB4FHiddenSuperPotion

	def_object_events
	object_event 17,  3, SPRITE_GIOVANNI, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerRocketHideoutGiovanni, EVENT_BEAT_GIOVANNI_HIDEOUT
	object_event  2,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB4FLiftKey, EVENT_ROCKET_HIDEOUT_B4F_LIFT_KEY
	object_event 17,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB4FSilphScope, EVENT_ROCKET_HIDEOUT_B4F_SILPH_SCOPE
	object_event  3,  2, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerRocketGruntF3, -1
	object_event 18, 14, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerRocketExecutiveF1, EVENT_BEAT_GIOVANNI_HIDEOUT
	object_event 15, 14, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerRocketExecutiveM1, EVENT_BEAT_GIOVANNI_HIDEOUT
	object_event  1,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB4FTMRazorWind, EVENT_ROCKET_HIDEOUT_B4F_TM_RAZOR_WIND
	object_event  2, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB4FHPUp, EVENT_ROCKET_HIDEOUT_B4F_HP_UP
	object_event  4, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RocketHideoutB4FIron, EVENT_ROCKET_HIDEOUT_B4F_IRON
