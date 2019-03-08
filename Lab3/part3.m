song = { 'G' , 1.25 ; 'Em', 2 ; 'C', 2 ; 'D', 1.5; 'G' , 1.25 ; 'Em', 2 ; 'C', 2 ; 'D', 1.5};
beat_length = 1;
fs = 11025;
num_beats = 6;

Z = get_song_wave(song, beat_length, fs );

soundsc(Z);

y = ADSR_env( Z, beat_length, num_beats, fs );

%soundsc(y);

%spectrogram(y,[],[],[],11025);