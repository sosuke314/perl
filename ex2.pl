while($line=<STDIN>){
  chomp($line);
  if($line eq 'bye'){
    print "さようなら\n";
    last;
  }elsif($line eq 'hello'){
    print "こんにちは\n";
  }else{
  print "あんた無愛想だね\n";
  }
}
