# 文書集合から索引語を抽出するプログラム
#   引数として文書ファイルを１つ以上与える
#     文書ごとに１つのファイルに分けてもよい
#     全文書を１つにまとめてもよい

while ($line = <>) {	# １行ずつ読み込む
    chomp($line);	# 行末の改行を削除する

    if ($line =~ /^<NUM>(D[0-9]+)<\/NUM>$/) {	# 文書ID [^<]は補集合 +は1文字以上の文字 [^<+]
	$docid = $1;                            # $1はD001,D002...を抽出

    } elsif ($line !~ /^</) {	# タグ以外の行から索引語を抽出する

	# 読み込んだ１行を索引語に分割する
	@term = split(/\s/, $line);	# 空白で分割する場合
#	@term = split(/[\s\-]/, $line);	# 空白とハイフンでも分割する場合

	foreach $term (@term) {	# 索引語を１つずつ処理して表示する

	    # 小文字に統一する
	    $term =~ tr/A-Z/a-z/;

	    # 末尾の記号（ピリオド，カンマ）を削除する
	    $term =~ s/[\,\.]$//;

	    print "$docid $term\n";	# 文書IDと索引語１つを表示する
	}
    }
}