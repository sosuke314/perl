#!/usr/bin/perl

# stemming.prl
# 接辞処理（stemming）のプログラム
#   stopword.prl の結果を入力する

while ($line = <>) {
    chomp($line);

    ($docid, $term) = split(/\s/, $line);

    # 接辞処理の規則
    # 自分で適宜変更してよい

    $term =~ s/s$//;	# 末尾の s（複数形）を削除
    $term =~ s/es$//;	# 末尾の es（複数形）を削除
    # ２つの順番を入れ替えると queries や types などは結果が変わる

    $term =~ s/er$//;	# 末尾の er（形容詞の比較級）を削除
    $term =~ s/est$//;	# 末尾の est（形容詞の最上級）を削除

    $term =~ s/ed$//;	# 末尾の ed（過去形等）を削除
    $term =~ s/ing$//;	# 末尾の ing（現在進行形）を削除

    # 接辞処理の規則ここまで


    if ($term ne '') {		# 削除しても $term の中身があれば defined
	print "$docid $term\n";	# 表示する
    }
}
