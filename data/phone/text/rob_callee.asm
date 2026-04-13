RobStoryText:
	text "While I was walk-"
	line "ing around the"
	cont "forest trying to"
	roll "find #MON,"
	cont "I cut my finger"
	roll "on a leaf!"

	para "It bled a little,"
	line "but I'm fine."
	done

RobReminderText:
	text "Where are you now?"

	para "Close to"
	line "@"
	text_from_ram wStringBuffer5
	text "?"

	para "Don't tell me you"
	line "forgot we were"
	cont "going to battle?"
	done