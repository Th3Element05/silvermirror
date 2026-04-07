	object_const_def
	const ROUTE12_SNORLAX

Route12_MapScripts:
	def_scene_scripts

	def_callbacks

 ;scripts
Route12Snorlax:
	opentext
	special SnorlaxAwake
	iftrue .PlayRadio
	checkitem POKE_FLUTE
	iftrue .PlayPokeFlute
	writetext Route11_SnorlaxSleepingText
	waitbutton
	closetext
	end

.PlayPokeFlute:
	writetext Route11_PlayPokeFluteAskText
	yesorno
	iftrue Route12SnorlaxBattleScript
	writetext Route11_LetSnorlaxSleepText
	waitbutton
	closetext
	end

.PlayRadio:
	writetext Route11_RadioNearSnorlaxText
	promptbutton
	sjump Route12RadioWakesSnorlax

Route12SnorlaxBattleScript:: ;export for pokeflute from pack
	special FadeOutMusic
	writetext Route11_PlayPokeFluteText
	playsound SFX_POKEFLUTE
	waitsfx
Route12RadioWakesSnorlax:
	writetext Route11_SnorlaxWokeUpText
	promptbutton
	pause 15
	cry SNORLAX
	writetext Route11_SnorlaxAttackedText
	waitbutton
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon SNORLAX, 30
	startbattle
	reloadmapafterbattle
	disappear ROUTE12_SNORLAX
	setevent EVENT_WOKE_SNORLAX
;	reloadmappart
	special CheckBattleCaughtResult
	iftrue .caught
	opentext
	writetext Route11_SnorlaxWentHomeText
	waitbutton
	closetext
.caught
	checkevent EVENT_ROUTE_16_SNORLAX
	iffalse .notboth
	setflag ENGINE_PLAYER_WOKE_BOTH_SNORLAX
.notboth
	end

;Route12_SnorlaxSleepingText:
;	text "A sleeping #MON"
;	line "blocks the way!"
;	done
;
;Route12_RadioNearSnorlaxText:
;	text "SNORLAX can hear"
;	line "the music from"
;	cont "the #GEAR."
;
;	para "…"
;	done
;
;Route12_PlayPokeFluteAskText:
;	text "SNORLAX is sound"
;	line "asleep."
;	
;	para "Will you play the"
;	line "#FLUTE?"
;	done
;
;Route12_PlayPokeFluteText:
;	text "<PLAYER> played"
;	line "the #FLUTE for"
;	cont "SNORLAX!"
;	done
;
;Route12_SnorlaxWokeUpText:
;	text "SNORLAX woke up!"
;	done
;
;Route12_SnorlaxAttackedText:
;	text "It attacked in a"
;	line "grumpy rage!"
;	done
;
;Route12_LetSnorlaxSleepText:
;	text "<PLAYER> let the"
;	line "SNORLAX sleep."
;	done
;
;Route12_SnorlaxWentHomeText:
;	text "SNORLAX calmed"
;	line "down! With a big"
;	cont "yawn, it returned"
;	roll "to the mountains!"
;	done

TrainerFisherScott:
	trainer FISHER, SCOTT, EVENT_BEAT_FISHER_SCOTT, FisherScottSeenText, FisherScottBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext FisherScottAfterBattleText
	waitbutton
	closetext
	end

FisherScottSeenText:
	text "Yeah! I got a"
	line "bite, here!"
	done

FisherScottBeatenText:
	text "Tch!"
	line "Just a small fry!"
	done

FisherScottAfterBattleText:
	text "Hang on! My line's"
	line "snagged!"
	done

TrainerFisherHenry:
	trainer FISHER, HENRY, EVENT_BEAT_FISHER_HENRY, FisherHenrySeenText, FisherHenryBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext FisherHenryAfterBattleText
	waitbutton
	closetext
	end

FisherHenrySeenText:
	text "Be patient!"
	line "Fishing is a"
	cont "waiting game!"
	done

FisherHenryBeatenText:
	text "That"
	line "one got away!"
	done

FisherHenryAfterBattleText:
	text "With a better ROD,"
	line "I could catch"
	cont "better #MON!"
	done

TrainerFisherMarvin:
	trainer FISHER, MARVIN, EVENT_BEAT_FISHER_MARVIN, FisherMarvinSeenText, FisherMarvinBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext FisherMarvinAfterBattleText
	waitbutton
	closetext
	end

FisherMarvinSeenText:
	text "The FISHING FOOL"
	line "vs. #MON KID!"
	done

FisherMarvinBeatenText:
	text "Too much!"
	done

FisherMarvinAfterBattleText:
	text "You beat me at"
	line "#MON, but I'm"
	cont "good at fishing!"
	done

TrainerFisherTully:
	trainer FISHER, TULLY1, EVENT_BEAT_FISHER_TULLY, FisherTullySeenText, FisherTullyBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext FisherTullyAfterBattleText
	waitbutton
	closetext
	end

FisherTullySeenText:
	text "I'd rather be"
	line "working!"
	done

FisherTullyBeatenText:
	text "It's not easy…"
	done

FisherTullyAfterBattleText:
	text "It's all right."
	line "Losing doesn't"
	cont "bug me any more."
	done

TrainerGuitaristVincent:
	trainer GUITARIST, VINCENT, EVENT_BEAT_GUITARIST_VINCENT, GuitaristVincentSeenText, GuitaristVincentBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext GuitaristVincentAfterBattleText
	waitbutton
	closetext
	end

GuitaristVincentSeenText:
	text "Electricity is my"
	line "specialty!"
	done

GuitaristVincentBeatenText:
	text "Unplugged!"
	done

GuitaristVincentAfterBattleText:
	text "Water conducts"
	line "electricity, so"
	cont "you should zap"
	roll "sea #MON!"
	done

TrainerFisherRaymond:
	trainer FISHER, RAYMOND, EVENT_BEAT_FISHER_RAYMOND, FisherRaymondSeenText, FisherRaymondBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext FisherRaymondAfterBattleText
	waitbutton
	closetext
	end

FisherRaymondSeenText:
	text "You never know"
	line "what you could"
	cont "catch!"
	done

FisherRaymondBeatenText:
	text "Lost it!"
	done

FisherRaymondAfterBattleText:
	text "I catch MAGIKARP"
	line "all the time, but"
	cont "they're so weak!"
	done

TrainerCamperTed:
	trainer CAMPER, TED, EVENT_BEAT_CAMPER_TED, CamperTedSeenText, CamperTedBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext CamperTedAfterBattleText
	waitbutton
	closetext
	end

CamperTedSeenText:
	text "Have you found a"
	line "MOON STONE?"
	done

CamperTedBeatenText:
	text "Oww!"
	done

CamperTedAfterBattleText:
	text "I could have made"
	line "my #MON evolve"
	cont "with MOON STONE!"
	done

; items
Route12TMPayDay:
	itemball TM_PAY_DAY

Route12Iron:
	itemball IRON

Route12HiddenHyperPotion:
	hiddenitem HYPER_POTION, EVENT_ROUTE_12_HIDDEN_HYPER_POTION

; signs
Route12Sign:
	jumptext Route12SignText
Route12SignText:
	text "ROUTE 12"

	para "NORTH TO"
	line "LAVENDER TOWN"
	done

FishingSpotSign:
	jumptext FishingSpotSignText
FishingSpotSignText:
	text "FISHING SPOT"
	done

Route12_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13, 73, ROUTE_12_SUPER_ROD_HOUSE, 1
	warp_event  0, 60, ROUTE_11_GATE, 3
	warp_event  0, 61, ROUTE_11_GATE, 4
	warp_event 12, 15, ROUTE_12_GATE, 1
	warp_event 13, 15, ROUTE_12_GATE, 2
	warp_event 12, 19, ROUTE_12_GATE, 3

	def_coord_events

	def_bg_events
	bg_event 13, 61, BGEVENT_READ, Route12Sign
	bg_event 15, 13, BGEVENT_READ, FishingSpotSign
	bg_event  3, 62, BGEVENT_ITEM, Route12HiddenHyperPotion

	def_object_events
	object_event 10, 60, SPRITE_BIG_SNORLAX, SPRITEMOVEDATA_BIGDOLLSYM, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route12Snorlax, EVENT_ROUTE_12_SNORLAX
	object_event 16, 29, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerFisherScott, -1
	object_event  7, 37, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerFisherHenry, -1
	object_event 14, 38, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerFisherMarvin, -1
	object_event 11, 50, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerFisherTully, -1
	object_event 16, 72, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerGuitaristVincent, -1
	object_event  8, 83, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerFisherRaymond, -1
	object_event 13, 88, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerCamperTed, -1
	object_event 16, 33, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, Route12TMPayDay, EVENT_ROUTE_12_TM_PAY_DAY
	object_event  7, 85, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route12Iron, EVENT_ROUTE_12_IRON
