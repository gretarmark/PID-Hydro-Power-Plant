function val = sin_wave(t,Fs,F)
% Sine wave

% t:  time
% Fs: Sampling time
% F:  Frequency (Fs must be at least two times greater than F)

    Fs = 2*F;   % Samples per second (Sample frequency Fs must be at least two times the frequency F_freq to avoid aliasing)
    val = sin(2*pi*Fs*t);
end