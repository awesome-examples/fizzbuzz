use v5.10;
use warnings;

for (1 .. 100) {
    print 'Fizz' unless $_ % 3;
    print 'Buzz' unless $_ % 5;
    print "$_" if $_ % 3 && $_ % 5;
    print "\t"
}
