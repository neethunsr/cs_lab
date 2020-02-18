#Search for the pattern ‘apple’ in the file and display the number of occurences.
#!/usr/bin/env perl
use strict;
use warnings;
   
my $filename = shift;   # Get filename

open my $file, '<', $filename or die "Can't open $filename: $_!";
my $count = 0;

while (<$file>) 
	{
	$count += () = $_ =~ /\w*apple\w*/gi;
	}
print "Number of occurences of the pattern 'apple' = $count\n";
close $file or die "Can't open file: $_";
