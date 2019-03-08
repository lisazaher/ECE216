[bass, fs] = audioread('bass.wav');
guitar = audioread('guitar.wav');
drums = audioread('drums.wav');

a = length(guitar);

guit = a/fs

duration = 5;
b = bass(1:fs*duration);
g = guitar(1:fs*duration);
d = drums(1:fs*duration);

t = linspace(1, 4, fs*duration);
t= t';

comp = b + t.*g + d;
sound(comp, fs);
