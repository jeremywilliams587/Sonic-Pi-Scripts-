# Welcome to Sonic Pi v3.1
# Welcome to Sonic Pi v3.1
p = "C:/Users/jeremy_williams/Music/Yo Pierre You Wanna Come Out Here - The Jamie Foxx Show.wav"
s = "C:/Users/jeremy_williams/Music/2nd synth Timeless.wav"
t = "C:/Users/jeremy_williams/Music/3rd coming beat.wav"
M = "C:/Users/jeremy_williams/Music/MobSpeech.wav"
r = "C:/Users/jeremy_williams/Music/3secTime audio.wav"
sample p, release: 4, amp: 0.5
sample :ambi_piano, release: 1
sleep 0.5
3.times do
  sample r
  sleep 3.598276643990
  sample :ambi_piano, release: 1, start: 0.3
end
print "next"
4.times do
  sample s
  sleep 3.691156462585034
  sample :ambi_piano, release: 1, start: 0.3
end
x = 0.6
sample M
6.times do
  2.times do
    sample r, amp: x
    sleep 3.598276643990
  end
  x = x + 0.25
end
live_loop :beat do
  sample t
  sleep 74.66873015873016
  stop
end
live_loop :synth do
  5.times do
    sample s
    sleep 3.691156462585034
  end
  sample s, release: 3
  stop
end
sleep 74.668
# Custom Song #2
Intro = "C:/Users/jeremy_williams/Music/PP Intro.wav"
Blossom = "C:/Users/jeremy_williams/Music/Blossom.wav"
Bubbles = "C:/Users/jeremy_williams/Music/Bubbles.wav"
Buttercup = "C:/Users/jeremy_williams/Music/buttercup.wav"
Synth = "C:/Users/jeremy_williams/Music/EndSynth.wav"
Joy = "C:/Users/jeremy_williams/Music/Joy.wav"
Tuff = "C:/Users/jeremy_williams/Music/Tuff.wav"
Commander = "C:/Users/jeremy_williams/Music/Commander.wav"
ending = "C:/Users/jeremy_williams/Music/Bbase_Ending.wav"
print sample_duration Joy
print sample_duration Tuff
print sample_duration Commander
My_Sams = [ Blossom, Bubbles, Buttercup]
x = 0
y = 1
#INTRO///////////////////////
sample Intro, attack: 3, amp: 3
sleep 17.107
3.times do
  3.times do
    sample My_Sams[x], rate: y, amp: 5
    sleep 0.5
    x = x + 1
    print y
  end
  if x == 3
    x = 0
    y = y + 0.1
  end
end
#TRANSITION//////////////////
2.times do
  sample Synth
  sleep 2.5
end
sleep 1
#PARA. FUNCTION/////////////
use_bpm 160
define :Par1 do |n0,n1,n2|
  print "par1"
  play n0, release: 1.5
  sleep 1.5
  play n1, release: 1.5
  sleep 1.5
  play n2
  sleep 1
end
define :Par3 do |n0,n1,n2,n3|
  print "Par3"
  play n0, release: 0.5
  sleep 0.5
  play n1
  sleep 1
  play n2
  sleep 1
  play n3
  sleep 1
end
define :Par4 do |n0,n1|
  print "Par4"
  play n0, release: 0.5, amp: 0.5
  play n1, release: 0.5, amp: 0.5
  sleep 4
end
define :Par2 do |n0,n1,n2,n3,n4,n5|
  print "Par2"
  print n0, release: 1.5, amp: 0.5
  print n1, release: 1.5, amp: 0.5
  sleep 1.5
  play n2, release: 1.5, amp: 0.5
  play n3, release: 1.5, amp: 0.5
  sleep 1.5
  play n4, amp: 0.5
  play n5, amp: 0.5
  sleep 1
end
define :measure1 do
  play :b2, release: 1.5, amp: 0.5
  play :d3, release: 1.5, amp: 0.5
  play :f3, release: 1.5, amp: 0.5
  sleep 3
  play :d3, amp: 0.5
  play :f3, amp: 0.5
  sleep 1
end
x = rand_i
print x
use_synth :sine
live_loop :Bsynth do
  x.times do
    Par1 :b4,:g4,:b4
    Par3 :b4,:b4,:g4,:b4
    Par1 :c5,:b4,:a4
    Par3 :a4,:a4,:g4,:a4
    Par1 :b4,:g4,:b4
    play :b4, release: 3
    sleep 3
    play :b4
    sleep 1
    Par1 :e5,:b4,:c5
    play :c5, release: 0.5
    sleep 0.5
    play :a4, release: 3.5
    sleep 3.5
  end
  stop
end
live_loop :Bbase do
  x.times do
    measure1
    Par4 :d3,:f3
    Par2 :g3,:c3,:f3,:d3,:a3,:c3
    Par4 :a3,:c3
    measure1
    play :d3, release: 3, amp: 0.5
    play :f3, release: 3, amp: 0.5
    sleep 4
    Par2 :b3,:g3,:b3,:f3,:g3,:e3
    play :g3, release: 0.5, amp: 0.3
    play :e3, release: 0.5, amp: 0.3
    sleep 0.5
    play :e3, release: 3.5, amp: 0.3
    play :c3, release: 3.5, amp: 0.3
    play :a2, release: 3.5, amp: 0.3
  end
  stop
end
sleep 33
x.times do
  sample Joy, amp: 0.7
  sleep 4.54256235827664
end
x.times do
  sample Tuff, amp: 0.7
  sleep 4.5796145124716554
end
live_loop :Comm do
  x.times do
    sample Commander, amp: 0.7
    sleep 4.8791156462585035
  end
  stop
end
sleep 2
sample ending, attack: 5, release: 10
