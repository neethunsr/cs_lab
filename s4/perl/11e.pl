#Search for words containing zero or more occurrence of ‘e’
#!/usr/bin/env perl
use strict;
use warnings;
   
my $filename = shift;   # Get filename
open my $file, '<', $filename or die "Can't open $filename: $_!";

print "Words containing zero or more occurences of 'e' are:\n";
my $count = 0;
while (my $line = <$file>) {
	chomp $line;
	foreach my $string (split /\s+/, $line ){
		if($string =~ /e*/ ){
			$count+=1;
			print "$string\n";
			}
		}	
	}
print "Count = $count \n";
close $file or die "Can't open file: $_";

