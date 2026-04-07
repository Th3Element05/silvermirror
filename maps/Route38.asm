	object_const_def
	const ROUTE38_CHESTO_BERRY
	const ROUTE38_WHT_APRICORN

Route38_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, Route38Fruittrees

Route38Fruittrees:
	checkflag ENGINE_DAILY_ROUTE_38_FRUIT
	iftrue .NoFruit
	appear ROUTE38_CHESTO_BERRY
	appear ROUTE38_WHT_APRICORN
.NoFruit:
	endcallback

; fruit
Route38_ChestoBerry:
	opentext
	farwritetext _FruitBearingTreeText
	promptbutton
	getitemname STRING_BUFFER_3, CHESTO_BERRY
	farwritetext _HeyItsFruitText
	promptbutton
	verbosegiveitem CHESTO_BERRY, 2
	iffalse .NoRoomInBag
	disappear ROUTE38_CHESTO_BERRY
	setflag ENGINE_DAILY_ROUTE_38_FRUIT
.NoRoomInBag
	closetext
	end

Route38_WHTApricorn:
	opentext
	farwritetext _FruitBearingTreeText
	promptbutton
	getitemname STRING_BUFFER_3, WHT_APRICORN
	farwritetext _HeyItsFruitText
	promptbutton
	verbosegiveitem WHT_APRICORN
	iffalse .NoRoomInBag
	disappear ROUTE38_WHT_APRICORN
	setflag ENGINE_DAILY_ROUTE_38_FRUIT
.NoRoomInBag
	closetext
	end

Route38_NoFruit:
	farsjump Std_NoFruitScript

; trainers
TrainerLassConnie:
	trainer LASS, CONNIE, EVENT_BEAT_LASS_CONNIE, LassConnieSeenText, LassConnieBeatenText, 0, .Script
.Script
	endifjustbattled
	opentext
	writetext LassConnieAfterBattleText
	waitbutton
	closetext
	end

LassConnieSeenText:
	text "You seem to be"
	line "good at #MON."

	para "If you are, how"
	line "about giving me"
	cont "some advice?"
	done

LassConnieBeatenText:
	text "I see. So you can"
	line "battle that way."
	done

LassConnieAfterBattleText:
	text "I know something"
	line "good!"

	para "MOOMOO FARM's milk"
	line "is famous for its"
	cont "flavor."
	done

TrainerSailorHuey:
	trainer SAILOR, HUEY1, EVENT_BEAT_SAILOR_HUEY, SailorHueySeenText, SailorHueyBeatenText, 0, .Script
.Script
	endifjustbattled
	opentext
	writetext SailorHueyAfterBattleText
	waitbutton
	closetext
	end

SailorHueySeenText:
	text "I've been over-"
	line "seas, so I know"
	cont "about all sorts of"
	roll "#MON!"
	done

SailorHueyBeatenText:
	text "Your skill is"
	line "world class!"
	done

SailorHueyAfterBattleText:
	text "All kinds of peo-"
	line "ple around the"
	cont "world live happily"
	roll "with #MON."
	done

TrainerBeautyEmma:
	trainer BEAUTY, EMMA, EVENT_BEAT_BEAUTY_EMMA, BeautyEmmaSeenText, BeautyEmmaBeatenText, 0, .Script

.Script
	endifjustbattled
	opentext
	writetext BeautyEmmaAfterBattleText
	waitbutton
	closetext
	end

BeautyEmmaSeenText:
	text "Don't you think my"
	line "#MON and I are"
	cont "beautiful?"
	done

BeautyEmmaBeatenText:
	text "We drink MOOMOO"
	line "MILK every day."
	done

BeautyEmmaAfterBattleText:
	text "MOOMOO MILK is"
	line "good for beauty"
	cont "and health."
	done

TrainerBeautyCarol:
	trainer BEAUTY, CAROL, EVENT_BEAT_BEAUTY_CAROL, BeautyCarolSeenText, BeautyCarolBeatenText, 0, .Script
.Script
	endifjustbattled
	opentext
	writetext BeautyCarolAfterBattleText
	waitbutton
	closetext
	end

BeautyCarolSeenText:
	text "Hi! Aren't you a"
	line "cute trainer!"

	para "May I see your"
	line "#MON?"
	done

BeautyCarolBeatenText:
	text "I'm glad I got to"
	line "see your #MON!"
	done

BeautyCarolAfterBattleText:
	text "When I see #-"
	line "MON, it seems to"
	cont "soothe my nerves."
	done

TrainerBirdKeeperJoe:
	trainer BIRD_KEEPER, JOE, EVENT_BEAT_BIRD_KEEPER_JOE, BirdKeeperJoeSeenText, BirdKeeperJoeBeatenText, 0, .Script
.Script
	endifjustbattled
	opentext
	writetext BirdKeeperJoeAfterBattleText
	waitbutton
	closetext
	end

BirdKeeperJoeSeenText:
	text "Fly high into the"
	line "sky, my beloved"
	cont "bird #MON!"
	done

BirdKeeperJoeBeatenText:
	text "I feel like just"
	line "flying away now."
	done

BirdKeeperJoeAfterBattleText:
	text "I plan to train in"
	line "CIANWOOD CITY to"
	cont "teach my #MON"
	roll "how to FLY."
	done

Route38Sign:
	jumptext Route38SignText
Route38SignText:
	text "ROUTE 38"

	para "OLIVINE CITY -"
	line "ECRUTEAK CITY"
	done

Route38TrainerTips:
	jumptext Route38TrainerTipsText
Route38TrainerTipsText:
	text "TRAINER TIPS"

	para "If a #MON is"
	line "trying to evolve,"
	cont "you can stop it."

	para "Press the B-button"
	line "during evolution."

	para "That startles the"
	line "#MON and stops"
	cont "its evolution."
	done

Route38_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 35,  8, ROUTE_38_ECRUTEAK_GATE, 1
	warp_event 35,  9, ROUTE_38_ECRUTEAK_GATE, 2

	def_coord_events

	def_bg_events
	bg_event 12, 10, BGEVENT_READ, Route38_NoFruit
	bg_event 12,  9, BGEVENT_READ, Route38_NoFruit
	bg_event 33,  7, BGEVENT_READ, Route38Sign
	bg_event  5, 13, BGEVENT_READ, Route38TrainerTips

	def_object_events
	object_event 12, 10, SPRITE_BERRY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, Route38_ChestoBerry, EVENT_ROUTE_38_CHESTO_BERRY
	object_event 12,  9, SPRITE_APRICORN, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, Route38_WHTApricorn, EVENT_ROUTE_38_WHT_APRICORN
	object_event 14,  3, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerLassConnie, -1 ;dana
	object_event 24,  5, SPRITE_SAILOR, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerSailorHuey, -1 ;harry
	object_event  5,  8, SPRITE_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerBeautyEmma, -1 ;olivia
	object_event 21,  9, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerBeautyCarol, -1 ;valerie
	object_event 11, 15, SPRITE_ROCKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerBirdKeeperJoe, -1 ;toby
;	object_event  4,  1, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerSchoolboyChad1, -1
