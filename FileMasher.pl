use strict;
use warnings;

print "Choose the first file in your current directory to combine.\n";
my $firstFile = <STDIN>;
chomp($firstFile);
open(my $fh, "+<", "$firstFile") or die "cannot open < $firstFile: $!";
my @mash1 = <$fh>;
close($fh);

print "Choose the second file in your current directory to combine.\n";
my $secondFile = <STDIN>;
chomp($secondFile);
open(my $fh2, "+<", "$secondFile") or die "cannot open < $secondFile: $!";
my @mash2 = <$fh2>;
close($fh2);

my @mashed = (@mash1, "\n", @mash2);

#Create a new file and add the contents of firstFile and secondFile
my $newFile = "newFile.txt";
open(my $fh3, '>', "$newFile") or die "can't create $newFile: $!";
print $fh3 @mashed;
close($fh3);


