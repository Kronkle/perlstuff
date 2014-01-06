#calculated off of between 70% and 85% of 1RM
#1st warmup set: 12 reps 50% 
#2nd warmup set: 10 reps 50%
#3rd warmup set: 4 reps 70%
#4th warmup set: 1 rep 90%
#3 additional sets: original weight, progress if you hit 6 perfect reps. aim for 4-6 reps for each set. 

use strict;
use warnings;
use Data::Types qw(:all);

print "This is a warmup and \"heavy\" lift calculator 
for Michael Matthews' Bigger Leaner Stronger program.\n";

print "Enter your 1RM\n";
my $max = <STDIN>;

if (is_int($max)){

printf "Your 1RM of %d is correctly inputted\n", $max;
}
else{
print "You didn't enter an integer variable for your 1RM\n";
die("Please use an integer next time");
}

print "Now, would you like to use 70, 75, 80, or 85% of your 1RM?";
my $percent = <STDIN>;
my $amax;
my $set12, my $set3, my $set4;
printf "Read in this for your percent: %d\n", $percent;

if($percent == 70){
calc(70);
}
elsif($percent == 75){
calc(75);
}
elsif($percent == 80){
calc(80);
}
elsif($percent == 85){
calc(85);
}
else{
print "Please only enter either 70, 75, 80, or 85% of your 1RM";
}

#First (and only) arg is the current % of the 1RM
sub calc{
printf "The current max is %d\n", $max;
printf "The passed in percentage was %d\n", $_[0];

$amax = $max * $_[0] * .01;
printf "The calculated amax was %d\n", $amax;

$set12 = $amax * .5;
$set3 = $amax * .7;
$set4 = $amax *.9;

printf "Your first warmup set is %d for 12 reps\n", $set12;
printf "Your second warmup set is %d for 10 reps\n", $set12;
printf "Your third warmup set is %d for 4 reps\n", $set3;
printf "Your fourth warmup set is %d for 1 rep\n", $set4;
printf "Then do 3 additional sets starting with %d. Aim for 4-6 reps per set and if you complete one set perfectly for 6 reps, raise the weight either 5 lbs for a dumbell exercise or 10 lbs for a barbell exercise. Adjust weight if necessary.", $amax;

}