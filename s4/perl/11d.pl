#Search for words containing ‘a’ or ‘s’
#!/usr/bin/env perl
use strict;
use warnings;
   
my $filename = shift;   # Get filename
open my $file, '<', $filename or die "Can't open $filename: $_!";

print "Words containing 'a' or 's' are:\n";

while (my $line = <$file>){
	chomp $line;
	foreach my $string (split /\s+/, $line ){
		if($string =~ /\w*(a|s)\w*/gi )
			print "$string\n";
	}
}
close $file or die "Can't open file: $_";

