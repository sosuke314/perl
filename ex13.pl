while ($line =<>){
  chomp($line);
#     if ($line =~ /[^0-9]+/){
     if ($line =~ /([a-z]{3})([^0-9]+)/){
        print "$1 $2\n";
      }
}
