foreach $file(@ARGV){
  open(IN, $file) || die "Cannot open $file: $!";
  while($line = <IN>){
    @words =();
    @chars =();
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
      $alllines = $allline + $lines;
      $allwords = $allwords + $words;
      $allchars = $allchars + $chars;
      @a =();
      @b =();
}
print "$alllines $allwords $allchars\n";
