#!/usr/bin/perl

# stopword.prl
# 不要語（ストップワード）を削除するプログラム
#   extract.prl の結果を入力する

# 不要語の定義
# 自分で適宜変更してよい
%stopword = ();
$stopword{'a'} = 1;
$stopword{'also'} = 1;
$stopword{'an'} = 1;
$stopword{'and'} = 1;
$stopword{'are'} = 1;
$stopword{'as'} = 1;
$stopword{'because'} = 1;
$stopword{'by'} = 1;
$stopword{'can'} = 1;
$stopword{'for'} = 1;
$stopword{'from'} = 1;
$stopword{'in'} = 1;
$stopword{'into'} = 1;
$stopword{'is'} = 1;
$stopword{'of'} = 1;
$stopword{'on'} = 1;
$stopword{'our'} = 1;
$stopword{'that'} = 1;
$stopword{'the'} = 1;
$stopword{'these'} = 1;
$stopword{'to'} = 1;
$stopword{'was'} = 1;
$stopword{'we'} = 1;
$stopword{'which'} = 1;
$stopword{'while'} = 1;
$stopword{'with'} = 1;

while ($line = <>) {
    chomp($line);

    ($docid, $term) = split(/\s/, $line);

    if (!defined($stopword{$term})) {	# 不要語でなければ
	print "$docid $term\n";		# 表示する
    }
}
