#29
#%a = ('kuma' => 'x1', 'neko' => 'x2', 'kiji' => 'x3', 'saru' => 'x4');
#%a = %b;

#30
#%x = ('kuma' => 70, 'neko' => 50, 'kiji' => 60, 'saru' => 90);
#foreach $key(sort keys %x) {
#  print "$key\t$x{$key}\n";    #keysがキーを配列に格納するメソッド。キーをソート,$keysに一つずついれる
#}

#31
#%x = ('kuma' => 70, 'neko' => 50, 'kiji' => 60, 'saru' => 90);
#foreach $key (
#sort {$x{$b} <=> $x{$a}} keys %x) { #sort{$a <=> $b} @a
#  print "$key\t$x{$key}\n";         #%xをキーを配列に格納して$x{$b} <=> $x{$a}で値の逆順でソート。それを一つずつ出力
#}

#%x = ('kuma' => 'あ', 'neko' => 'か', 'kiji' => 'さ', 'saru' => 'た');
#foreach $key (
#sort {$x{$b} <=> $x{$a}} keys %x) { #sort{$a <=> $b} @a
#  print "$key\t$x{$key}\n";         #%xをキーを配列に格納して$x{$b} <=> $x{$a}で値の逆順でソート。それを一つずつ出力
#}
