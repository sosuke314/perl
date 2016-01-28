#!/usr/bin/perl

# idf.prl
# 「索引語 文書ID TF IDF 重み」を１行で表示する
#   tf.prl の結果を入力する

%tf = ();
%df = ();

# 最初の１行には文書数が書かれている
chomp($n = <>);

while ($line = <>) {
    chomp($line);
    ($term, $docid, $tf) = split(/\s/, $line);
    $tf{$term}{$docid} = $tf;	# TFの値を保存する
    $df{$term}++;	# DFの値を一つ増やす
}

foreach $term (sort keys %tf) {
    foreach $docid (sort keys %{$tf{$term}}) {
	$tf = $tf{$term}{$docid};
	$idf = log($n/$df{$term}) + 1;	# idf(t) を計算する
	$w = $tf*$idf;	# 重み w(t,d) を計算する
	print "$term $docid $tf $idf $w\n";
    }
}
