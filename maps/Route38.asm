	object_const_def
	const ROUTE_38_BERRY
	const ROUTE_38_APRICORN

Route38_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, Route38Fruittrees

Route38Fruittrees:
.Berry:
	checkflag ENGINE_DAILY_ROUTE_38_BERRY
	iftrue .NoBerry
	appear ROUTE_38_BERRY
.NoBerry:
	;fallthrough

.Apricorn:
	checkflag ENGINE_DAILY_ROUTE_38_APRICORN
	iftrue .NoApricorn
	appear ROUTE_38_APRICORN
.NoApricorn:
	endcallback

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
	cont "#MON!"
	done

SailorHueyBeatenText:
	text "Your skill is"
	line "world class!"
	done

SailorHueyAfterBattleText:
	text "All kinds of peo-"
	line "ple around the"
	cont "world live happily"
	cont "with #MON."
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
	cont "how to FLY."
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

	para "Press the B But-"
	line "ton during evolu-"
	cont "tion."

	para "That startles the"
	line "#MON and stops"
	cont "its evolution."
	done

Route38BerryTree:
	opentext
	writetext Route38BerryTreeText
	promptbutton
	writetext Route38HeyItsBerryText
	promptbutton
	verbosegiveitem ORAN_BERRY
	iffalse .NoRoomInBag
	disappear ROUTE_38_BERRY
	setflag ENGINE_DAILY_ROUTE_38_BERRY
.NoRoomInBag
	closetext
	end

Route38ApricornTree:
	opentext
	writetext Route38ApricornTreeText
	promptbutton
	writetext Route38HeyItsApricornText
	promptbutton
	verbosegiveitem WHT_APRICORN
	iffalse .NoRoomInBag
	disappear ROUTE_38_APRICORN
	setflag ENGINE_DAILY_ROUTE_38_APRICORN
.NoRoomInBag
	closetext
	end

Route38NoBerry:
	opentext
	writetext Route38BerryTreeText
	promptbutton
	writetext Route38NothingHereText
	waitbutton
	closetext
	end

Route38NoApricorn:
	opentext
	writetext Route38ApricornTreeText
	promptbutton
	writetext Route38NothingHereText
	waitbutton
	closetext
	end

Route38BerryTreeText:
	text "It's a"
	line "BERRY tree…"
	done

Route38HeyItsBerryText:
	text "Hey! It's"
	line "ORAN BERRY!"
	done

Route38ApricornTreeText:
	text "It's an"
	line "APRICORN tree…"
	done

Route38HeyItsApricornText:
	text "Hey! It's"
	line "WHT APRICORN!"
	done

Route38NothingHereText:
	text "There's nothing"
	line "here…"
	done

Route38_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 35,  8, ROUTE_38_ECRUTEAK_GATE, 1
	warp_event 35,  9, ROUTE_38_ECRUTEAK_GATE, 2

	def_coord_events

	def_bg_events
	bg_event 33,  7, BGEVENT_READ, Route38Sign
	bg_event  5, 13, BGEVENT_READ, Route38TrainerTips
	bg_event 12, 11, BGEVENT_READ, Route38NoBerry
	bg_event 12,  9, BGEVENT_READ, Route38NoApricorn

	def_object_events
	object_event 12, 11, SPRITE_BERRY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route38BerryTree, EVENT_ROUTE_38_BERRY
	object_event 12,  9, SPRITE_APRICORN, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_ROCK, OBJECTTYPE_SCRIPT, 0, Route38ApricornTree, EVENT_ROUTE_38_APRICORN
	object_event 14,  3, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerLassConnie, -1 ;dana
	object_event 24,  5, SPRITE_SAILOR, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerSailorHuey, -1 ;harry
	object_event  5,  8, SPRITE_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerBeautyEmma, -1 ;olivia
	object_event 19,  9, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerBeautyCarol, -1 ;valerie
	object_event 11, 15, SPRITE_ROCKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerBirdKeeperJoe, -1 ;toby
;	object_event  4,  1, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerSchoolboyChad1, -1
