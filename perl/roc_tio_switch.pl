#!/usr/bin/perl
use warnings;
use strict;
use threads;
use Cwd;
use Getopt::Long;
use Time::HiRes qw(usleep);
BEGIN
{
 if ($^O eq "MSWin32")
 {
  eval "use Win32::SerialPort";
  die "$@\n" if ($@);
 }
 else
 {
    eval "use Device::SerialPort";
    eval "use Socket";
    eval "use IO::Socket::INET";
    eval "use IO::Select";
    die "$@\n" if ($@);
  }
}


$| = 1;
#use vars qw($opt_d $opt_n $opt_seed $opt_ff $opt_ftf);
my ($opt_s,$opt_verbose,$opt_seed,$opt_duart, $opt_board, $opt_testname,$opt_rdb,$opt_gs);

if($^O eq "linux")
{
GetOptions(
"s:i"       => \$opt_s,
"vv!"       => \$opt_verbose,
"seed:i"    => \$opt_seed,
"ser:s"     => \$opt_duart,
"board:s"   => \$opt_board,
"t:s"       => \$opt_testname,
"rdb!"      => \$opt_rdb,
"gs!"       => \$opt_gs
);
}
else
{
GetOptions(
"vv!"       => \$opt_verbose,
"seed:i"    => \$opt_seed,
"ser:s"     => \$opt_duart,
"t:s"       => \$opt_testname,
"rdb!"      => \$opt_rdb,
);
}

if(!$opt_board)
{
  $opt_board ="lx2160a";
}

  if("lx2160a" eq $opt_board) {
          print "uart message recveived in tio_capture thread\n";
  }else{
          print "duart message recveived in tio_capture thread\n";
  }


if($opt_verbose)
{
   printf("e_REQ_OPEN_INJECT_PORT received \n");
}

