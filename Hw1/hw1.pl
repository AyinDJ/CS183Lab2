#!/usr/bin/perl
#homework 1 part 2
#perl

foreach my $file_name(@ARGV){
	open(my $fh, '<',$file_name)
	or die "'$file_name' can not open $!";
	
	while(<>){
		print;
	}
}
