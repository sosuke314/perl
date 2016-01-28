$text = "apples big bigger biggest, . - Bear emotion\n";

$text =~ s/apples/apple/g;
$text =~ s/bigger/big/g;
$text =~ s/biggest/big/g;
$text =~ s/\,/ /g;
$text =~ s/\./ /g;
$text =~ s/\-/ /g;
$text =~ tr/A-Z/a-z/;
$text =~ s/emotion/emote/g;

print "$text";
