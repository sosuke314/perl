while ($line =<>){
  chomp($line);
  @words = split(/ /, $line);
  @chars = split(//, $line);
  push(@a,@words);
  push(@b,@chars);
  $lines = $lines + 1;
}

  $words = @a;
  $chars = @b;
  print "$lines $words $chars\n";
