#Search for words containing the letters ‘l’ and ‘m’, with any number of characters in between
#!/usr/bin/env perl
use strict;
use warnings;
   
my $filename = shift;   # Get filename
open my $file, '<', $filename or die "Can't open $filename: $_!";

print "Words containing the letters ‘l’ and ‘m’, with any number of characters in between:\n";
my $count = 0;
while (my $line = <$file>) {
	chomp $line;
	foreach my $string (split /\s+/, $line ){
		if($string =~ /\bl..m\b/gi){
			$count+=1;
			print "$string\n";
			}
		}
	}
print "Count = $count \n";
close $file or die "Can't open file: $_";

