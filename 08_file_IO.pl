use strict;
use warnings;
use diagnostics;

use feature 'say';

use feature "switch";

use v5.14.2;

# read a file
my $emp_file = 'employees.txt';

open my $fh, '<', $emp_file			# fh - file handler, < - read only
	or die "Can't Open File : $_";
	
while(my $info = <$fh>){
	chomp($info);
	
	my ($emp_name, $job, $id) = split /:/, $info;
	
	print "$emp_name is a $job and has the id $id \n";
}
	
close $fh or die "Couldn't Close File : $_";	# close the file

# open file for appending data
open $fh, '>>', $emp_file			# >> - append
	or die "Can't Open File : $_";
	
print $fh "John:Carpenter:126\n";
close $fh or die "Couldn't Close File : $_";	# close the file

# read and write from file
open $fh, '+<', $emp_file			# +< - 
	or die "Can't Open File : $_";
	
seek $fh, 0, 0;					# go to the beginning of file

print $fh "Phil:Salesman:125\n";
close $fh or die "Couldn't Close File : $_";	# close the file