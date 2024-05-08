Music_PokeFluteChannel:
	channel_count 3
	channel 1, Music_PokeFluteChannel_Ch1
	channel 2, Music_PokeFluteChannel_Ch2
	channel 3, Music_PokeFluteChannel_Ch3

Music_PokeFluteChannel_Ch1:
	tempo 240
	volume 7, 7
	stereo_panning TRUE, FALSE
	duty_cycle 3
	pitch_offset 2
	note_type 12, 11, 4
	rest 16
	rest 4
	note_type 12, 11, 3
	rest 12
	octave 3
	sound_ret

Music_PokeFluteChannel_Ch2:
	stereo_panning FALSE, TRUE
	duty_cycle 3
	pitch_offset 1
	note_type 12, 12, 4
	rest 16
	octave 2
	rest 12
	note_type 12, 12, 3
	rest 4
	sound_ret

Music_PokeFluteChannel_Ch3:
	vibrato 16, 1, 4
	note_type 12, 1, 0
	octave 5
	note E_, 2
	note F_, 2
	note G_, 4
	note A_, 2
	note G_, 2
	octave 6
	note C_, 4
	note C_, 2
	note D_, 2
	note C_, 2
	octave 5
	note G_, 2
	note A_, 2
	note F_, 2
	note G_, 4
	sound_ret
