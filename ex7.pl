#22
#@a = (2,6,10);
#@b = (-5,4,9,1);
#($x) = @a;
#($x,$y) = @b;
#($c,@d) = @b;
#@a = (-5,4,9,1,9);
#$x = @a;

#23
#@a = (100,22,-4,19,2,-31);
#@x = sort @a; #アルファベット順　辞書順　-31 -4 100 19 2 22
#@x = sort{$a <=> $b} @a; #昇順　-31 -4 2 19 22 100
#@x = sort{$b <=> $a} @a;
#print "@x\n";

#24
#@a =(100,22,-4,19,2,-31);
#@x = reverse @a; #逆順-31 2 19 -4 22 100
#$x = 'He went to school.';
#@words = split(/ /, $x);
#print "@words[1]\n" #went
#$x = "He\twent";
#@words = split(/\t/,$x);
#print "@words[0]\n" #He

#25
#@a = ('I','go','to','school');
#$x = join(' ',@a); #空白 I go to school
#$x = join('',@a); #そのまま Igotoschool
#$x = join("\t",@a); #タブつける ダブルクオート　I\tgo\tto\tschool　シングルでもいける？
#print "$x"

#26
#@a = (1,3,5,7,9,11,13,15,17);
#@x = splice(@a,5,3);
#print "@x" #5番目から3つの要素を切り出す 11 13 15
#print "@a" #切り出されて変化 1,3,5,7,9,17
#@a = ('saru','tori','inu');
#@x = splice(@a,1,2);
#print "@x";

#27
#@a = (100,22,-4,19,2,-31);
#@x = grep(($_>10),@a); #100 22 19
#@x = grep(($_<=5),@a);
#@a = ('saru','tori','inu');
#@x = grep($_ eq 'saru',@a);
#print "@x";
