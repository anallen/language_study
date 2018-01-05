#!/usr/bin/perl
#use warnings;
#use strict;
#use threads;
#use Cwd;
#use Getopt::Long;
#use Time::HiRes qw(usleep);
my $i =0x7d;

$str="testtest";  

my $num = 5;

if ($num > 2)
{
    print "This is a correct expression!\n";
}
while(1){
    $num += 1;
    print "num = $num\n";
    sleep (1);
}

print "234\n";

print "$^O\n";

printf("i=%x",$i);
printf("i(%x)\n",$i);

#$buf=  substr($str,0,5); 
#print "buff=$buf \n"; 
print substr($str,0,3); 
print "\n"; 
for($i=0;$i<10;$i++)
{
    printf("tmp(%d)=%s\n",$i,substr($str,$i,1)); 
}
printf("tmp2=%s\n",substr($str,0,1)); 
printf("tmp1=%s\n",substr($str,0,100)); 
print "\n"; 




my $string = "I can learn much form perlcn.com";
my $loc = index($string,"perlcn");
print "$loc\n";
$loc = index($string,"I");
print "$loc\n";
$loc = index($string,"Perlcn");
print "$loc\n";
$loc = rindex($string,"perlcn");
print "$loc\n";

my $test="perl";
$loc = rindex($string, $test);
print "$loc\n";

if(index($string,"I") >= 0) {print "123\n"};

$ack_msg = pack('C',0x0f) . pack('N', $pcap_len);
for($idx=length($ack_msg);$idx<$MSG_LEN;$idx++)
{
    $ack_msg = $ack_msg . pack('C',0);
}
#my $timeout=8000000;
my $timeout=1500000000;#67s
#my $timeout=3000000000;#125s
#my $timeout=22500000000;#125s
print "begin\n";
$datestring = localtime();
print "时间日期为：$datestring\n";
#while($timeout)
#{
#  $timeout--;
#}
#if($timeout == 0)
#{
#    print "timeout=0\n";
#}
#sleep(4);
$datestring = localtime();
print "时间日期为：$datestring\n";
print "end\n";
my $opt_ser = "uart";
my $i = 124;
if($i == 123 && "uart" eq $opt_ser){
    print "uart is $opt_ser\n";
}
#Wrong usage 1
#$str="testtest";  
#for($i=0;$i<4;$i++){
#printf("str[%d]=%c\n",$i, $str[$i]);
#}
