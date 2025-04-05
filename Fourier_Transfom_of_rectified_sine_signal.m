%Fourier Transfom of rectified sine signal
fy=1; %signal frequency in Hz
wy=2*pi*fy; %signal frequency in rad/s
Ty=1/fy; %signal period in seconds
N=256;
fs=N*fy; %sampling frequency in Hz
tiv=1/fs; %time interval between samples;
t=0:tiv:(Ty-tiv); %time intervals set
y=abs(sin(wy*t)); %signal data set
fou=fft(y,fs); %Fourier Transform (set of complex numbers)
hmag=real(fou); ah=hmag/N; %get set of harmonic amplitudes
stem(0:9,ah(1:10)); hold on; %plot of first 10 harmonics
plot([0 10],[0 0],'k');
xlabel('Hz'); title('rectified sine signal harmonics');