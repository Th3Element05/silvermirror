ToddAnswerPhoneText:
;	text "Yes? This is"
;	line "@"
;	text_ram wStringBuffer3
;	text " speaking."
;
;	para "Hey, <PLAY_G>!"
;	done
;
ToddAnswerPhoneDayText:
;	text "Yes? This is"
;	line "@"
;	text_ram wStringBuffer3
;	text " speaking."
;
;	para "This must be"
;	line "<PLAY_G>."
;	done
;
ToddAnswerPhoneNiteText:
	text "Yes? This is"
	line "@"
	text_ram wStringBuffer3
	text " speaking."

	para "Ah, <PLAYER>!"
	done

ToddGreetText:
	text "Hello, this is"
	line "@"
	text_ram wStringBuffer3
	text "."

	para "<PLAYER>, right?"
	done

ToddGreetDayText:
	text "Hello, this is"
	line "@"
	text_ram wStringBuffer3
	text "."

	para "<PLAYER>, what are"
	line "you doing?"
	done

ToddGreetNiteText:
	text "Hello, this is"
	line "@"
	text_ram wStringBuffer3
	text "."

	para "<PLAYER>, sorry to"
	line "call you so late."
	done

ToddGenericText:
	text "How do you raise"
	line "your #MON?"

	para "I do all sorts"
	line "of things, like"
;	cont "leaving them in"
;	roll "DAY-CARE and"
	cont "toughening them up"
	roll "with items."
	done
