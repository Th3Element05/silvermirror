HillaryCutestThingText:
;	text "That's right…"
;
;	para "If you ask me"
;	line "which is cuter," 
;
;	para "my students or "
;	line "#MON,"
;
;	para "I'll have a hard"
;	line "time making that"
;	cont "decision."
;
;	para "Come to think of"
;	line "it, for a lot of"
;
;	para "kids, their first"
;	line "#MON is the"
;
;	para "cutest one in the"
;	line "world in their"
;	cont "young eyes."
;
;	para "And there's no-"
;	line "thing that can be"
;
;	para "said to change"
;	line "that opinion."
;	done

	text "For a lot of kids,"
	line "their first #-"
	cont "MON is the cutest"
	roll "one in the world"
	cont "in their eyes."

	para "And nothing anyone"
	line "says will change"
	cont "their opinion."
	done


HillaryReminderText:
	text "Hey!"

	para "Do you remember"
	line "you made plans"
	cont "with me?"

	para "We said we were"
	line "going to meet on"
	cont "@"
	text_from_ram wStringBuffer5
	text_start
	cont "and have a battle,"
	roll "right?"

	para "Don't forget!"
	done