# Welcome to Sonic Pi v3.1
p = "C:/Users/jeremy_williams/Music/Yo Pierre You Wanna Come Out Here - The Jamie Foxx Show.wav"
s = "C:/Users/jeremy_williams/Music/2nd synth Timeless.wav"
t = "C:/Users/jeremy_williams/Music/3rd coming beat.wav"
M = "C:/Users/jeremy_williams/Music/MobSpeech.wav"
r = "C:/Users/jeremy_williams/Music/Timeless - (2018) Lil Uzi Vert Juice Wrld Type Beat.wav"

sample p, release: 4
sample :ambi_piano, release: 1
sleep 0.5
3.times do
  sample r
  sleep 3.598276643990
  sample :ambi_piano, release: 1, start: 0.3
end
print "next"
3.times do
  sample s
  sleep 3.691156462585034
  sample :ambi_piano, release: 1, start: 0.3
end
print "next"

sample t
sleep 74.66873015873016
sample M

11.times do
  sample s, amp: 0.3
  sleep 3.691156462585034
end
sample s, amp: 0.6
sleep 3.691156462585034

live_loop :beat do
  sample t
  sleep 74.66873015873016
end
live_loop :synth do
  sample s
  sleep 3.691156462585034
end