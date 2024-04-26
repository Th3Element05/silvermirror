; Pokémon traded from RBY do not have held items, so GSC usually interprets the
; catch rate as an item. However, if the catch rate appears in this table, the
; item associated with the table entry is used instead.

TimeCapsule_CatchRateItems:
	db LINKING_CORD, LEFTOVERS
	db FRESH_WATER,  PERSIM_BERRY ; ITEM_2D,      PERSIM_BERRY
	db X_SPEED,      SITRUS_BERRY ; ITEM_32,      SITRUS_BERRY
	db YLW_APRICORN, ORAN_BERRY ; HELIX_FOSSIL, ORAN_BERRY
	db BLACKGLASSES, ORAN_BERRY ; DOME_FOSSIL,  ORAN_BERRY
	db ENERGY_ROOT,  ORAN_BERRY ; OLD_AMBER,    ORAN_BERRY
	db BERRY_JUICE,  ORAN_BERRY ; SAFARI_BALL,  ORAN_BERRY
	db TM_GIGA_DRAIN, ORAN_BERRY ; ITEM_BE,      ORAN_BERRY
	db TM_EARTHQUAKE, ORAN_BERRY ; ITEM_C3,      ORAN_BERRY
	db TM_FLAMETHROWER, ORAN_BERRY ; ITEM_DC,      ORAN_BERRY
	db HM_SURF,      ORAN_BERRY ; ITEM_FA,      ORAN_BERRY
	db TM_MIMIC,     ORAN_BERRY ; TM_PSYCH_UP,  ORAN_BERRY
	db TM_ROLLOUT,   ORAN_BERRY ; TM_ICE_PUNCH, ORAN_BERRY
	db TM_SHADOW_BALL, ORAN_BERRY ; TM_DETECT,    ORAN_BERRY
	db -1,           ORAN_BERRY
	db 0 ; end
