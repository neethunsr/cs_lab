#Count the number of words that ends with ‘e’
#!/usr/bin/env perl
use strict;
use warnings;
   
my $filename = shift;   # Get filename

open my $file, '<', $filename or die "Can't open $filename: $_!";
my $count = 0;

while (<$file>) 
	{
	$count += () = $_ =~ /\w*e\b/gi;
	}
print "Number of words that end with 'e' = $count\n";
close $file or die "Can't open file: $_";
