%freq = ();
while ($line =<>){
  chomp($line);
  @words = split(/ /, $line);

   foreach $w (@words) {
    if(defined($freq{$w})){
      $freq{$w}++;
    }else{
      $freq{$w} = 1;
    }
  }
}

foreach $key(
sort{$freq{$b} <=> $freq{$a}} keys %freq){
  print "$key\t$freq{$key}\n";
}
