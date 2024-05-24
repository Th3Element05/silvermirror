	object_const_def
	const ROUTE_8_BERRY
	const ROUTE_8_APRICORN

Route8_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, Route8Fruittrees

Route8Fruittrees:
.Berry:
	checkflag ENGINE_DAILY_ROUTE_8_BERRY
	iftrue .NoBerry
	appear ROUTE_8_BERRY
.NoBerry:
	;fallthrough
.Apricorn:
	checkflag ENGINE_DAILY_ROUTE_8_APRICORN
	iftrue .NoApricorn
	appear ROUTE_8_APRICORN
.NoApricorn:
	endcallback

TrainerSuperNerdPat:
	trainer SUPER_NERD, PAT, EVENT_BEAT_SUPER_NERD_PAT, SuperNerdPatSeenText, SuperNerdPatBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SuperNerdPatAfterBattleText
	waitbutton
	closetext
	end

SuperNerdPatSeenText:
	text "You look good at"
	line "#MON, but"
	cont "how's your chem?"
	done

SuperNerdPatBeatenText:
	text "Ow!"
	line "Meltdown!"
	done

SuperNerdPatAfterBattleText:
	text "I am better at"
	line "school than this!"
	done

TrainerPokefanMJoshua:
	trainer POKEFANM, JOSHUA, EVENT_BEAT_POKEFANM_JOSHUA, PokefanMJoshuaSeenText, PokefanMJoshuaBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext PokefanMJoshuaAfterBattleText
	waitbutton
	closetext
	end

PokefanMJoshuaSeenText:
	text "Nihihi! Would you"
	line "like to battle my"
	cont "POLIWAG gang?"
	done

PokefanMJoshuaBeatenText:
	text "PO- POLIWAG!"
	done

PokefanMJoshuaAfterBattleText:
	text "You look like you"
	line "have many #MON,"

	para "but POLIWAG is"
	line "still the best."
	done

TrainerLassDana:
	trainer LASS, DANA1, EVENT_BEAT_LASS_DANA, LassDanaSeenText, LassDanaBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext LassDanaAfterBattleText
	waitbutton
	closetext
	end

LassDanaSeenText:
	text "I like NIDORAN, so"
	line "I collect them!"
	done

LassDanaBeatenText:
	text "Why? Why??"
	done

LassDanaAfterBattleText:
	text "When #MON grow"
	line "up they get ugly!"
	cont "They shouldn't"
	cont "evolve!"
	done

TrainerSuperNerdTom:
	trainer SUPER_NERD, TOM, EVENT_BEAT_SUPER_NERD_TOM, SuperNerdTomSeenText, SuperNerdTomBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SuperNerdTomAfterBattleText
	waitbutton
	closetext
	end

SuperNerdTomSeenText:
	text "School is fun, but"
	line "so are #MON."
	done

SuperNerdTomBeatenText:
	text "I'll"
	line "stay with school."
	done

SuperNerdTomAfterBattleText:
	text "We're stuck here"
	line "because of the"
	cont "gates at SAFFRON."
	done

TrainerLassSarah:
	trainer LASS, SARAH, EVENT_BEAT_LASS_SARAH, LassSarahSeenText, LassSarahBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext LassSarahAfterBattleText
	waitbutton
	closetext
	end

LassSarahSeenText:
	text "MEOWTH is so cute,"
	line "meow, meow, meow!"
	done

LassSarahBeatenText:
	text "Meow!"
	done

LassSarahAfterBattleText:
	text "I think PIDGEY"
	line "and RATTATA"
	cont "are cute too!"
	done

TrainerLassChloe:
	trainer LASS, CHLOE, EVENT_BEAT_LASS_CHLOE, LassChloeSeenText, LassChloeBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext LassChloeAfterBattleText
	waitbutton
	closetext
	end

LassChloeSeenText:
	text "We must look"
	line "silly standing"
	cont "here like this!"
	done

LassChloeBeatenText:
	text "Look what"
	line "you did!"
	done

LassChloeAfterBattleText:
	text "SAFFRON's gate"
	line "keeper won't let"
	cont "us through."
	cont "He's so mean!"
	done

TrainerSuperNerdShawn:
	trainer SUPER_NERD, SHAWN, EVENT_BEAT_SUPER_NERD_SHAWN, SuperNerdShawnSeenText, SuperNerdShawnBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SuperNerdShawnAfterBattleText
	waitbutton
	closetext
	end

SuperNerdShawnSeenText:
	text "You need strategy"
	line "to win at this!"
	done

SuperNerdShawnBeatenText:
	text "It's"
	line "not logical!"
	done

SuperNerdShawnAfterBattleText:
	text "Go with GRIMER"
	line "first...and..."
	cont "...and...then..."
	done

TrainerPokefanMTrevor:
	trainer POKEFANM, TREVOR, EVENT_BEAT_POKEFANM_TREVOR, PokefanMTrevorSeenText, PokefanMTrevorBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext PokefanMTrevorAfterBattleText
	waitbutton
	closetext
	end

PokefanMTrevorSeenText:
	text "I'm going to shop"
	line "at the DEPT.STORE"
	cont "and then…"
	done

PokefanMTrevorBeatenText:
	text "What was I going"
	line "to do?"
	done

PokefanMTrevorAfterBattleText:
	text "Oh, yes! I have to"
	line "get my #MON out"
	cont "of DAY-CARE!"
	done

TrainerLassNora:
	trainer LASS, NORA, EVENT_BEAT_LASS_NORA, LassNoraSeenText, LassNoraBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext LassNoraAfterBattleText
	waitbutton
	closetext
	end

LassNoraSeenText:
	text "What's a cute,"
	line "round and fluffy"
	cont "#MON?"
	done

LassNoraBeatenText:
	text "Stop!"

	para "Don't be so mean"
	line "to my CLEFAIRY!"
	done

LassNoraAfterBattleText:
	text "I heard that"
	line "CLEFAIRY evolves"
	cont "when it's exposed"
	cont "to a MOON STONE."
	done

Route8UndergroundPathSign:
	jumptext Route8UndergroundPathSignText
Route8UndergroundPathSignText:
	text "UNDERGROUND PATH"
	line "CELADON CITY -"
	cont "LAVENDER TOWN"
	done

Route8BerryTree:
	opentext
	writetext Route8BerryTreeText
	promptbutton
	writetext Route8HeyItsBerryText
	promptbutton
	verbosegiveitem CHERI_BERRY
	iffalse .NoRoomInBag
	disappear ROUTE_8_BERRY
	setflag ENGINE_DAILY_ROUTE_8_BERRY
.NoRoomInBag
	closetext
	end

Route8ApricornTree:
	opentext
	writetext Route8ApricornTreeText
	promptbutton
	writetext Route8HeyItsApricornText
	promptbutton
	verbosegiveitem YLW_APRICORN
	iffalse .NoRoomInBag
	disappear ROUTE_8_APRICORN
	setflag ENGINE_DAILY_ROUTE_8_APRICORN
.NoRoomInBag
	closetext
	end

Route8NoBerry:
	opentext
	writetext Route8BerryTreeText
	promptbutton
	writetext Route8NothingHereText
	waitbutton
	closetext
	end

Route8NoApricorn:
	opentext
	writetext Route8ApricornTreeText
	promptbutton
	writetext Route8NothingHereText
	waitbutton
	closetext
	end

Route8BerryTreeText:
	text "It's a"
	line "BERRY tree…"
	done

Route8HeyItsBerryText:
	text "Hey! It's"
	line "CHERI BERRY!"
	done

Route8ApricornTreeText:
	text "It's an"
	line "APRICORN tree…"
	done

Route8HeyItsApricornText:
	text "Hey! It's"
	line "YLW APRICORN!"
	done

Route8NothingHereText:
	text "There's nothing"
	line "here…"
	done

Route8_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 12, ROUTE_8_SAFFRON_GATE, 3
	warp_event  4, 13, ROUTE_8_SAFFRON_GATE, 4
	warp_event  9,  5, ROUTE_8_UNDERGROUND_PATH_ENTRANCE, 1

	def_coord_events

	def_bg_events
	bg_event 11,  7, BGEVENT_READ, Route8UndergroundPathSign
	bg_event  5, 16, BGEVENT_READ, Route8NoBerry
	bg_event 49,  8, BGEVENT_READ, Route8NoApricorn

	def_object_events
	object_event  5, 16, SPRITE_BERRY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route8BerryTree, EVENT_ROUTE_8_BERRY
	object_event 49,  8, SPRITE_APRICORN, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, Route8ApricornTree, EVENT_ROUTE_8_APRICORN
	object_event  4,  7, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerSuperNerdPat, -1
	object_event  9, 11, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerPokefanMJoshua, -1
	object_event 22,  5, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerLassDana, -1
	object_event 22,  6, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerSuperNerdTom, -1
	object_event 22,  7, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerLassSarah, -1
	object_event 22,  8, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerLassChloe, -1
	object_event 38,  8, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerSuperNerdShawn, -1
	object_event 42, 15, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerPokefanMTrevor, -1
	object_event 47, 14, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_TRAINER, 4, TrainerLassNora, -1
