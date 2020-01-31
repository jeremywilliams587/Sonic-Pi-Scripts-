b = "C:/Users/jeremy_williams/Music/SpongeBeat.wav"
intro = "C:/Users/jeremy_williams/Music/SpongeIntro.wav"
s = "C:/Users/jeremy_williams/Music/SpongeSynth.wav"
yeah = "C:/Users/jeremy_williams/Music/Sponge.wav"
strike = "C:/Users/jeremy_williams/Music/SpongebobsStrike.wav"
beat = "C:/Users/jeremy_williams/Music/Sponge2ndBeat.wav"

x = 1
live_loop :lyrics do
  3.times do
    sample s, rate: x
    sleep 4.830
    x = x - 0.15
  end
  stop
end
3.times do
  sample b, amp: 3
  sleep 4.909
end
live_loop :outro do
  sample yeah, amp: 0.25
  x = 2
  4.times do
    sample beat, amp: x
    sleep 6.623922902494331
    x = x - 0.5
  end
  stop
end