	object_const_def
;	const ROUTE32_FRIEDA

Route32_MapScripts:
	def_scene_scripts

	def_callbacks
;	callback MAPCALLBACK_OBJECTS, Route32FriedaCallback

;Route32FriedaCallback:
;	readvar VAR_WEEKDAY
;	ifequal FRIDAY, .FriedaAppears
;	disappear ROUTE32_FRIEDA
;	endcallback
;
;.FriedaAppears:
;	appear ROUTE32_FRIEDA
;	endcallback

;FriedaScript:
;	faceplayer
;	opentext
;	checkevent EVENT_GOT_POISON_BARB_FROM_FRIEDA
;	iftrue .Friday
;	readvar VAR_WEEKDAY
;	ifnotequal FRIDAY, .NotFriday
;	checkevent EVENT_MET_FRIEDA_OF_FRIDAY
;	iftrue .MetFrieda
;	writetext MeetFriedaText
;	promptbutton
;	setevent EVENT_MET_FRIEDA_OF_FRIDAY
;.MetFrieda:
;	writetext FriedaGivesGiftText
;	promptbutton
;	verbosegiveitem POISON_BARB
;	iffalse .Done
;	setevent EVENT_GOT_POISON_BARB_FROM_FRIEDA
;	writetext FriedaGaveGiftText
;	waitbutton
;	closetext
;	end
;
;.Friday:
;	writetext FriedaFridayText
;	waitbutton
;.Done:
;	closetext
;	end
;
;.NotFriday:
;	writetext FriedaNotFridayText
;	waitbutton
;	closetext
;	end

;MeetFriedaText:
;	text "FRIEDA: Yahoo!"
;	line "It's Friday!"
;
;	para "I'm FRIEDA of"
;	line "Friday!"
;
;	para "Nice to meet you!"
;	done

;FriedaGivesGiftText:
;	text "Here's a POISON"
;	line "BARB for you!"
;	done

;FriedaGaveGiftText:
;	text "FRIEDA: Give it to"
;	line "a #MON that has"
;	cont "poison-type moves."
;
;	para "Oh!"
;
;	para "It's wicked!"
;
;	para "You'll be shocked"
;	line "how good it makes"
;	cont "poison moves!"
;	done

;FriedaFridayText:
;	text "FRIEDA: Hiya! What"
;	line "day do you like?"
;
;	para "I love Friday. No"
;	line "doubt about it!"
;
;	para "Don't you think"
;	line "it's great too?"
;	done

;FriedaNotFridayText:
;	text "FRIEDA: Isn't it"
;	line "Friday today?"
;
;	para "It's so boring"
;	line "when it's not!"
;	done

TrainerYoungsterRegis:
	trainer YOUNGSTER, REGIS, EVENT_BEAT_YOUNGSTER_REGIS, YoungsterRegisSeenText, YoungsterRegisBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext YoungsterRegisAfterText
	waitbutton
	closetext
	end

YoungsterRegisSeenText:
	text "I haven't seen you"
	line "around before."

	para "So you think you"
	line "are pretty tough?"
	done

YoungsterRegisBeatenText:
	text "You're strong!"
	done

YoungsterRegisAfterText:
	text "I'm going to try"
	line "to be the best"
	cont "with my favorites."

	para "I'm not using the"
	line "same tough #MON"
	cont "as everyone else."
	done

TrainerCoupleDuffAndEda_Eda:
	trainer COUPLE, DUFFANDEDA_EDA, EVENT_BEAT_COUPLE_DUFFANDEDA, CoupleDuffAndEda_EdaSeenText, CoupleDuffAndEda_EdaBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext CoupleDuffAndEda_EdaAfterText
	waitbutton
	closetext
	end

CoupleDuffAndEda_EdaSeenText:
	text "Uh-huh. Yeah, and"
	line "you know…"

	para "Pardon? Battle?"
	line "I'm on the phone."

	para "Oh, all right. But"
	line "make it fast."
	done

CoupleDuffAndEda_EdaBeatenText:
	text "EDA: I hung up,"
	line "and I still lost?"
	done

CoupleDuffAndEda_EdaAfterText:
	text "I was having a"
	line "nice chat too."
	done

TrainerCoupleDuffAndEda_Duff:
	trainer COUPLE, DUFFANDEDA_DUFF, EVENT_BEAT_COUPLE_DUFFANDEDA, CoupleDuffAndEda_DuffSeenText, CoupleDuffAndEda_DuffBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext CoupleDuffAndEda_DuffAfterText
	waitbutton
	closetext
	end

CoupleDuffAndEda_DuffSeenText:
	text "My girlfriend is"
	line "always talking on"
	cont "the phone."

	para "I know! We should"
	line "have a battle!"
	done

CoupleDuffAndEda_DuffBeatenText:
	text "Hmmm. This is"
	line "disappointing."
	done

CoupleDuffAndEda_DuffAfterText:
	text "At least she's"
	line "not on the phone"
	cont "anymore."
	done

TrainerFisherFred:
	trainer FISHER, FRED, EVENT_BEAT_FISHER_FRED, FisherFredSeenText, FisherFredBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext FisherFredAfterText
	waitbutton
	closetext
	end

FisherFredSeenText:
	text "My #MON?"
	line "Freshly caught!"
	done

FisherFredBeatenText:
	text "SPLASH?"
	done

FisherFredAfterText:
	text "Freshly caught"
	line "#MON are no"
	cont "match for properly"
	roll "trained ones."
	done

TrainerFisherWilton:
	trainer FISHER, WILTON1, EVENT_BEAT_FISHER_WILTON, FisherWiltonSeenText, FisherWiltonBeatenText, 0, .Script
.Script
	endifjustbattled
	opentext
	writetext FisherWiltonAfterText
	waitbutton
	closetext
	end

FisherWiltonSeenText:
	text "Whoa!"

	para "You made me lose"
	line "that fish!"
	done

FisherWiltonBeatenText:
	text "Sploosh!"
	done

FisherWiltonAfterText:
	text "Calm, collected…"

	para "The essence of"
	line "fishing and #-"
	cont "MON is the same."
	done

TrainerFisherRalph:
	trainer FISHER, RALPH1, EVENT_BEAT_FISHER_RALPH, FisherRalphSeenText, FisherRalphBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext FisherRalphAfterText
	waitbutton
	closetext
	end

FisherRalphSeenText:
	text "I'm really good at"
	line "both fishing and"
	cont "#MON."

	para "I'm not about to"
	line "lose to any kid!"
	done

FisherRalphBeatenText:
	text "Tch! I tried to"
	line "rush things…"
	done

FisherRalphAfterText:
	text "Fishing is a life-"
	line "long passion."

	para "#MON are life-"
	line "long friends!"
	done

TrainerYoungsterBrady:
	trainer YOUNGSTER, BRADY, EVENT_BEAT_YOUNGSTER_BRADY, YoungsterBradySeenText, YoungsterBradyBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext YoungsterBradyAfterText
	waitbutton
	closetext
	end

YoungsterBradySeenText:
	text "I found some good"
	line "#MON in the"
	cont "grass!"

	para "I think they'll do"
	line "it for me!"
	done

YoungsterBradyBeatenText:
	text "Darn. I thought I"
	line "could win."
	done

YoungsterBradyAfterText:
	text "The grass is full"
	line "of clingy things."
	done

TrainerBirdKeeperJohn:
	trainer BIRD_KEEPER, JOHN, EVENT_BEAT_BIRD_KEEPER_JOHN, BirdKeeperJohnSeenText, BirdKeeperJohnBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext BirdKeeperJohnAfterText
	waitbutton
	closetext
	end

BirdKeeperJohnSeenText:
	text "Those BADGEs! You"
	line "sure have a lot!"
	done

BirdKeeperJohnBeatenText:
	text "I know what my"
	line "weaknesses are."
	done

BirdKeeperJohnAfterText:
	text "I should train"
	line "again at the GYM"
	cont "in VIOLET CITY."
	done

Route32Sign:
	jumptext Route32SignText
Route32SignText:
	text "ROUTE 32"

	para "VIOLET CITY -"
	line "AZALEA TOWN"
	done

Route32RuinsSign:
	jumptext Route32RuinsSignText
Route32RuinsSignText:
	text "RUINS OF ALPH"
	line "EAST ENTRANCE"
	done

Route32UnionCaveSign:
	jumptext Route32UnionCaveSignText
Route32UnionCaveSignText:
	text "UNION CAVE"
	line "AHEAD"
	done

Route32PokecenterSign:
	jumpstd PokecenterSignScript

Route32HiddenUltraBall:
	hiddenitem ULTRA_BALL, EVENT_ROUTE_32_HIDDEN_ULTRA_BALL

Route32HiddenMaxPotion:
	hiddenitem MAX_POTION, EVENT_ROUTE_32_HIDDEN_MAX_POTION

Route32UltraBall:
	itemball ULTRA_BALL

Route32MaxRepel:
	itemball MAX_REPEL

;Route32RoarTMGuyScript:
;	faceplayer
;	opentext
;	checkevent EVENT_GOT_TM05_ROAR
;	iftrue .AlreadyHaveRoar
;	writetext Text_RoarIntro
;	promptbutton
;	verbosegiveitem TM_ROAR
;	iffalse .Finish
;	setevent EVENT_GOT_TM05_ROAR
;.AlreadyHaveRoar:
;	writetext Text_RoarOutro
;	waitbutton
;.Finish:
;	closetext
;	end
;
;Text_RoarIntro:
;	text "WROOOOAR!"
;	line "PEOPLE RUN WHEN I"
;
;	para "ROAR! BUT YOU"
;	line "CAME LOOKING!"
;
;	para "THAT PLEASES ME!"
;	line "NOW TAKE THIS!"
;	done
;
;Text_RoarOutro:
;	text "WROOOAR!"
;	line "IT'S ROAR!"
;
;	para "EVEN #MON RUN"
;	line "FROM A GOOD ROAR!"
;	done

Route32_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11, 73, ROUTE_32_POKECENTER_1F, 1
	warp_event  4,  2, ROUTE_32_RUINS_OF_ALPH_GATE, 3
	warp_event  4,  3, ROUTE_32_RUINS_OF_ALPH_GATE, 4
	warp_event  6, 79, UNION_CAVE_1F, 4

	def_coord_events
;	coord_event 18,  8, SCENE_ROUTE32_COOLTRAINER_M_BLOCKS, Route32CooltrainerMStopsYouScene
;	coord_event  7, 71, SCENE_ROUTE32_OFFER_SLOWPOKETAIL, Route32WannaBuyASlowpokeTailScript

	def_bg_events
	bg_event 13,  5, BGEVENT_READ, Route32Sign
	bg_event  9,  1, BGEVENT_READ, Route32RuinsSign
	bg_event 10, 84, BGEVENT_READ, Route32UnionCaveSign
	bg_event 12, 73, BGEVENT_READ, Route32PokecenterSign
	bg_event 12, 67, BGEVENT_ITEM, Route32HiddenUltraBall
	bg_event 11, 40, BGEVENT_ITEM, Route32HiddenMaxPotion

	def_object_events
;	object_event 12, 67, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FriedaScript, EVENT_ROUTE_32_FRIEDA_OF_FRIDAY
	object_event 12, 22, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerYoungsterRegis, -1 ;albert
	object_event  9, 35, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerCoupleDuffAndEda_Eda, -1 ;picnicker liz
	object_event  8, 35, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerCoupleDuffAndEda_Duff, -1 ;camper roland
	object_event  6, 48, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerFisherFred, -1 ;henry
	object_event  8, 49, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerFisherWilton, -1 ;justin
	object_event 12, 56, SPRITE_FISHER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerFisherRalph, -1 ;ralph
	object_event  4, 63, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerYoungsterBrady, -1 ;gordon
	object_event 11, 82, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBirdKeeperJohn, -1 ;peter
	object_event  6, 53, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route32UltraBall, EVENT_ROUTE_32_ULTRA_BALL
	object_event  3, 30, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route32MaxRepel, EVENT_ROUTE_32_MAX_REPEL
;	object_event 15, 13, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route32RoarTMGuyScript, -1