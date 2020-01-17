use_bpm 160


live_loop :stranger do
  use_synth :growl
  with_fx :compressor do
    play :c4
    sleep 0.5
    play :e4
    sleep 0.5
    play :g4
    sleep 0.5
    play :b4
    sleep 0.5
    play :c5
    sleep 0.5
    play :b4
    sleep 0.5
    play :g4
    sleep 0.5
    play :e4
    sleep 0.5
  end
end
sleep 8
1.times do
  play 40, release:8
  sleep 4
end
sleep 8
2.times
play 40, release: 4
sleep 5




