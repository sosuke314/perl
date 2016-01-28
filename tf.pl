#!/usr/bin/perl

# tf.prl
# 「索引語 文書ID TF」を１行で表示する
#   最初に文書数を表示する
#   stemming.prl の結果を入力する

%tf = ();
%doc = ();

while ($line = <>) {
    chomp($line);
    ($docid, $term) = split(/\s/, $line);
    $tf{$term}{$docid}++;
    $doc{$docid} = 1;
}

# ハッシュ %doc のキーを数える方法
$n = scalar(keys %doc);

print "$n\n";

foreach $term (sort keys %tf) {
    foreach $docid (sort keys %{$tf{$term}}) {
	print "$term $docid $tf{$term}{$docid}\n";	# tf(t,d) を表示する
    }
}
