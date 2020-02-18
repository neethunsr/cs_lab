#Count the number of words that begins with ‘ap’
#!/usr/bin/env perl
use strict;
use warnings;
   
my $filename = shift;   # Get filename

open my $file, '<', $filename or die "Can't open $filename: $_!";
my $count = 0;

while (<$file>) 
{
	$count += () = $_ =~ /\bap\w*/gi;
}
print "Number of words that begins with ‘ap’ = $count\n";
close $file or die "Can't open file: $_";
