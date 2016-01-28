while ($line =<>){
  chomp($line);
  if ($line =~ /\./){ #ピリオドがあるものに絞る
    if($line =~ /^[A-Za-z0-9\.]{5}$/){ #^hoge$で文字指定
      print "$line\n";
    }
  }
}
