#while($line=<>){ #ターミナルから読み込む
#  chomp($line);
#  print "Your input: $line\n";
#}

#36
#$file = 'hoge.txt';                             ファイルから読み込んでターミナルに出力
#open(IN, $file) || die "Cannot open $file: $!";
#while($line = <IN>) {
#  chomp($line);
#  print "$line\n";
#}
#close(IN) || die "Cannot close $file:$!";

#37
#$file = 'hoge2.txt';
#open(OUT,"> $file") || die "Cannot open $file: $!";
#while($line = <STDIN>) {
#  chomp($line);
#  print OUT "$line\n";
#}
#close(OUT) || die "Cannot close $file:$!"; 標準出力からhoge2に出力

#38
#$file = 'hoge2.txt';
#open(OUT,"> $file") || die "Cannot open $file: $!";
#print OUT "kuma\n";
#close(OUT) || die "Cannot close $file:$!";

#36
while ($line =<>){
  chomp($line);
  print "$line\n";
}
