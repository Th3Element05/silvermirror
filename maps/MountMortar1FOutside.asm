	object_const_def
	const MOUNTMORTAR1FOUTSIDE_HELIX_FOSSIL
	const MOUNTMORTAR1FOUTSIDE_DOME_FOSSIL

MountMortar1FOutside_MapScripts:
	def_scene_scripts

	def_callbacks

MountMortar1FHelixFossil:
	getitemname STRING_BUFFER_4, HELIX_FOSSIL
	opentext
	writetext MountMortar1F_FoundFossilText
	yesorno
	iffalse .DontTakeHelixFossil
	giveitem HELIX_FOSSIL
	iffalse MountMortar1F_PackIsFull
	disappear MOUNTMORTAR1FOUTSIDE_HELIX_FOSSIL
	setevent EVENT_MT_MORTAR_OBTAINED_FOSSIL
	writetext MtMortar1F_GotFossilText
	playsound SFX_ITEM
	waitsfx
	itemnotify
.DontTakeHelixFossil
	closetext
	end

MountMortar1FDomeFossil:
	getitemname STRING_BUFFER_4, DOME_FOSSIL
	opentext
	writetext MountMortar1F_FoundFossilText
	yesorno
	iffalse .DontTakeDomeFossil
	giveitem DOME_FOSSIL
	iffalse MountMortar1F_PackIsFull
	disappear MOUNTMORTAR1FOUTSIDE_DOME_FOSSIL
	setevent EVENT_MT_MORTAR_OBTAINED_FOSSIL
	writetext MtMortar1F_GotFossilText
	playsound SFX_ITEM
	waitsfx
	itemnotify
.DontTakeDomeFossil
	closetext
	end

MountMortar1F_PackIsFull:
	writetext MountMortar1F_PackIsFullText
	waitbutton
	closetext
	end

MountMortar1F_FoundFossilText:
	text "You found a"
	line "@"
	text_ram wStringBuffer4
	text "…"

	para "Will you take the"
	line "@"
	text_ram wStringBuffer4
	text "?"
	done

MtMortar1F_GotFossilText:
	text "<PLAYER> took the"
	line "@"
	text_ram wStringBuffer4
	text "."
	done

MountMortar1F_PackIsFullText:
	text "There's no room in"
	line "your PACK…"
	done


MountMortar1FOutsideEther:
	itemball ETHER

MountMortar1FOutsideRevive:
	itemball REVIVE

MountMortar1FOutsideHiddenHyperPotion:
	hiddenitem HYPER_POTION, EVENT_MOUNT_MORTAR_1F_OUTSIDE_HIDDEN_HYPER_POTION

MountMortar1FOutside_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3, 33, ROUTE_42, 3 ;1
	warp_event 17, 33, ROUTE_42, 4 ;2
	warp_event 37, 33, ROUTE_42, 5 ;3
	warp_event 17,  5, MOUNT_MORTAR_2F_INSIDE, 1 ;4
	warp_event 11, 21, MOUNT_MORTAR_1F_INSIDE, 1 ;5
	warp_event 29, 21, MOUNT_MORTAR_1F_INSIDE, 2 ;6
	warp_event 17, 29, MOUNT_MORTAR_B1F, 2 ;7
	warp_event  7, 13, MOUNT_MORTAR_1F_INSIDE, 3 ;8
	warp_event 33, 13, MOUNT_MORTAR_1F_INSIDE, 4 ;9

	def_coord_events

	def_bg_events
	bg_event 25, 22, BGEVENT_ITEM, MountMortar1FOutsideHiddenHyperPotion

	def_object_events
	object_event 20, 23, SPRITE_FOSSIL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MountMortar1FHelixFossil, EVENT_HELIX_FOSSIL_AT_MT_MORTAR
	object_event 21, 23, SPRITE_DOME_FOSSIL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MountMortar1FDomeFossil, EVENT_DOME_FOSSIL_AT_MT_MORTAR
	object_event 13, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortar1FOutsideEther, EVENT_MOUNT_MORTAR_1F_OUTSIDE_ETHER
	object_event 31, 18, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortar1FOutsideRevive, EVENT_MOUNT_MORTAR_1F_OUTSIDE_REVIVE
