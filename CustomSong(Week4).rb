b = "C:/Users/jeremy_williams/Music/SpongeBeat.wav"
intro = "C:/Users/jeremy_williams/Music/SpongeIntro.wav"
s = "C:/Users/jeremy_williams/Music/SpongeSynth.wav"
yeah = "C:/Users/jeremy_williams/Music/Sponge.wav"
strike = "C:/Users/jeremy_williams/Music/SpongebobsStrike.wav"
beat = "C:/Users/jeremy_williams/Music/Sponge2ndBeat.wav"
Sounds = [ b, yeah, beat, strike, intro, s]
use_bpm 136
index = 0
use_synth :piano
define :measure5 do
  play:B4, amp: 0.3
  sleep 0.75
  play:As4, amp: 0.3
  sleep 0.25
  play:Gs4, amp: 0.3
  play:B4, amp: 0.3
  sleep 0.75
  play:Cs5, amp: 0.3
  sleep 0.25
  play:B4, amp: 0.3
  sleep 1
  play:Gs4, amp: 0.3
  play:E5, amp: 0.3
  sleep 1
end
define :measure3 do
  play :r, amp: 0.3
  sleep 1
  play:E5, amp: 0.3
  play:Gs4, amp: 0.3
  play:B4, amp: 0.3
  sleep 1
  play:B4, amp: 0.3
  sleep 1
  play:E5, amp: 0.3
  play:Gs4, amp: 0.3
  sleep 1
end


define :measure2 do #measure2 could be any name
  play:E4, amp: 0.3
  sleep 1
  play:E5, amp: 0.03
  play:Gs4, amp: 0.3
  sleep 2
  play:E5, amp: 0.3
  play:Gs4, amp: 0.3
  sleep 1
end
x = 1
live_loop :lyrics do
  3.times do
    sample Sounds[index+5], rate: x
    sleep 4.830
    x = x - 0.15
    print x
  end
  stop
end
3.times do
  # Measure 6
  measure3
  
  # Measure 7
  measure5
  
  
  measure2
end

live_loop :outro do
  sample Sounds[index+5], amp: 0.75
  x = 0.5
  2.times do
    sample Sounds[index+2], amp: x
    sleep 15.014225245653817
    x = x + 0.5
    print x
  end
  
end





