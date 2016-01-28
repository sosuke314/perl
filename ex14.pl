while ($line =<>){
  chomp($line);
     if ($line =~ s/([a-z]{3})([^0-9]+)/cje3/g){
       #$line =~ s/([a-z]{3})([^0-9]+)/cje3/g;
       print "$line\n";
     }else{
       print "$line\n";
   }
}
