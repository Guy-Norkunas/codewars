def song_decoder(song)
  b = song.strip.split('WUB')
  i = 0
  if b[0] == ""
   b.slice!(0)
  end

  while i < b.length do
    if b[i] == ""
      b.slice!(i)
      i -= 1
    end
    i += 1
  end
  return b.join(' ').strip

end