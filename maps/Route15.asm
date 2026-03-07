	object_const_def

Route15_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerPicnickerMaria:
	trainer PICNICKER, MARIA, EVENT_BEAT_PICNICKER_MARIA, PicnickerMariaSeenText, PicnickerMariaBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer PicnickerMariaAfterBattleText

PicnickerMariaSeenText:
	text "What's cool?"
	line "Trading #MON!"
	done

PicnickerMariaBeatenText:
	text "I said trade!"
	done

PicnickerMariaAfterBattleText:
	text "I trade #MON"
	line "with my friends!"
	done

TrainerPicnickerLucy:
	trainer PICNICKER, LUCY, EVENT_BEAT_PICNICKER_LUCY, PicnickerLucySeenText, PicnickerLucyBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer PicnickerLucyAfterBattleText

PicnickerLucySeenText:
	text "Want to play with"
	line "my #MON?"
	done

PicnickerLucyBeatenText:
	text "I was"
	line "too impatient!"
	done

PicnickerLucyAfterBattleText:
	text "I'll go train with"
	line "weaker people."
	done

TrainerBirdKeeperBoris:
	trainer BIRD_KEEPER, BORIS, EVENT_BEAT_BIRD_KEEPER_BORIS, BirdKeeperBorisSeenText, BirdKeeperBorisBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer BirdKeeperBorisAfterBattleText

BirdKeeperBorisSeenText:
	text "When I whistle, I"
	line "can summon bird"
	cont "#MON!"
	done

BirdKeeperBorisBeatenText:
	text "Ow!"
	line "That's tragic!"
	done

BirdKeeperBorisAfterBattleText:
	text "Maybe I'm not cut"
	line "out for battles."
	done

TrainerBirdKeeperBob:
	trainer BIRD_KEEPER, BOB, EVENT_BEAT_BIRD_KEEPER_BOB, BirdKeeperBobSeenText, BirdKeeperBobBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer BirdKeeperBobAfterBattleText

BirdKeeperBobSeenText:
	text "Hmm? My birds are"
	line "shivering! You're"
	cont "good, aren't you?"
	done

BirdKeeperBobBeatenText:
	text "Just as I"
	line "thought!"
	done

BirdKeeperBobAfterBattleText:
	text "Did you know moves"
	line "like EARTHQUAKE"
	cont "don't have any"
	roll "effect on birds?"
	done

TrainerBeautyValerie:
	trainer BEAUTY, VALERIE, EVENT_BEAT_BEAUTY_VALERIE, BeautyValerieSeenText, BeautyValerieBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer BeautyValerieAfterBattleText

BeautyValerieSeenText:
	text "I raise #MON"
	line "because I live"
	cont "alone!"
	done

BeautyValerieBeatenText:
	text "I didn't"
	line "ask for this!"
	done

BeautyValerieAfterBattleText:
	text "I just like going"
	line "home to be with"
	cont "my #MON!"
	done

TrainerPicnickerCarrie:
	trainer PICNICKER, CARRIE, EVENT_BEAT_PICNICKER_CARRIE, PicnickerCarrieSeenText, PicnickerCarrieBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer PicnickerCarrieAfterBattleText

PicnickerCarrieSeenText:
	text "Let me try out the"
	line "#MON I just"
	cont "got in a trade!"
	done

PicnickerCarrieBeatenText:
	text "Not good enough!"
	done

PicnickerCarrieAfterBattleText:
	text "You can't change"
	line "the nickname of"
	cont "any #MON you"
	roll "get in a trade."

	para "Only the Original"
	line "Trainer can."
	done

TrainerBikerJoel:
	trainer BIKER, JOEL, EVENT_BEAT_BIKER_JOEL, BikerJoelSeenText, BikerJoelBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer BikerJoelAfterBattleText

BikerJoelSeenText:
	text "Fork over all your"
	line "cash when you"
	cont "lose to me, kid!"
	done

BikerJoelBeatenText:
	text "This can't be!"
	done

BikerJoelAfterBattleText:
	text "I was just joking"
	line "about the money!"
	done

TrainerBikerGlenn:
	trainer BIKER, GLENN, EVENT_BEAT_BIKER_GLENN, BikerGlennSeenText, BikerGlennBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer BikerGlennAfterBattleText

BikerGlennSeenText:
	text "Hey kid! C'mon!"
	line "I just got these!"
	done

BikerGlennBeatenText:
	text "Why not?"
	done

BikerGlennAfterBattleText:
	text "You only live"
	line "once, so I live"
	cont "as an outlaw!"
	roll "TEAM ROCKET RULES!"
	done

TrainerPicnickerTiffany:
	trainer PICNICKER, TIFFANY1, EVENT_BEAT_PICNICKER_TIFFANY, PicnickerTiffanySeenText, PicnickerTiffanyBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer PicnickerTiffanyAfterBattleText

PicnickerTiffanySeenText:
	text "You look gentle,"
	line "so I think I can"
	cont "beat you!"
	done

PicnickerTiffanyBeatenText:
	text "No, wrong!"
	done

PicnickerTiffanyAfterBattleText:
	text "I'm afraid of"
	line "BIKERs, they look"
	cont "so ugly and mean!"
	done

TrainerBeautyOlivia:
	trainer BEAUTY, OLIVIA, EVENT_BEAT_BEAUTY_OLIVIA, BeautyOliviaSeenText, BeautyOliviaBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer BeautyOliviaAfterBattleText

BeautyOliviaSeenText:
	text "Oh, you're a"
	line "little cutie!"
	done

BeautyOliviaBeatenText:
	text "You looked"
	line "so cute too!"
	done

BeautyOliviaAfterBattleText:
	text "I forgive you!"
	line "I can take it!"
	done

Route15Sign:
	jumptext Route15SignText
Route15SignText:
	text "ROUTE 15"

	para "FUCHSIA CITY -"
	line "LAVENDER TOWN"
	done

Route15TMWaterPulse:
	itemball TM_WATER_PULSE

Route15_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  8, ROUTE_15_GATE, 3
	warp_event  2,  9, ROUTE_15_GATE, 4

	def_coord_events

	def_bg_events
	bg_event 29,  9, BGEVENT_READ, Route15Sign

	def_object_events
	object_event 27,  5, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerPicnickerMaria, -1
	object_event  8, 13, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerPicnickerLucy, -1
	object_event 21, 13, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBirdKeeperBoris, -1
	object_event 25, 13, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBirdKeeperBob, -1
	object_event 31, 10, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBeautyValerie, -1
	object_event 31, 11, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerPicnickerCarrie, -1
	object_event 36, 10, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBikerJoel, -1
	object_event 38, 10, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBikerGlenn, -1
	object_event 43, 10, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerPicnickerTiffany, -1
	object_event 43, 11, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerBeautyOlivia, -1
	object_event  8,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, Route15TMWaterPulse, EVENT_ROUTE_15_TM_WATER_PULSE
