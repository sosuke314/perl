while ($line =<>){
  chomp($line);
  push(@a,$line);
  }
foreach $moji(sort @a){
  print $moji,"\n";
}
