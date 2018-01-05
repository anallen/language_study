#!/usr/bin/perl
##use warnings;
##use strict;
##use threads;
##use Cwd;
##use Getopt::Long;
##use Time::HiRes qw(usleep);
#
            my $MSG_LEN =12;
            my $idx = 0;
            my $pcap_file="";
            $pcap_file = "ROC_MC_NIC_Basic_captured_123456.pcap";
            print "pcap_file =$pcap_file\n";
            if(!(-e $pcap_file))
            {
                print STDERR "ERROR, file $pcap_file not exist.\n";
                next;
            }

            my $pcap_len = (-s $pcap_file);
            print "pcap_len=$pcap_len\n";
            if($pcap_len == 24){
                $pcap_len=0;
            }

            print "pcap_len2=$pcap_len\n";
            my $id = 0;
            for($id=0;$id<length($ack_msg);$id++){
                printf("ack_msg1(%d)=%d\n",$id,substr($ack_msg,$id,1));
            };

            my $i=1;
            if($i==1)
            {
                print "asdfaafasdfasdfsa\n";
            }

            my($msg0,$msg1,$msg2,$msg3);
            my $ack_msg = pack('C',0x0f) . pack('N', $pcap_len);
            #my $ack_msg = pack('C',0x0f);
            #my $ack_msg1 = pack('N', $pcap_len);
            #my $ack_msg = unpack('N', $$ack_msg1);
            #($msg0,$msg1,$msg2,$msg3) = 
            printf("ack_msg_length1=%d\n",length($ack_msg));
            #printf("ack_msg0 =%d\n",substr($ack_msg,0,1));
            #printf("ack_msg1 =%d\n",substr($ack_msg,1,1));
            #printf("ack_msg2 =%d\n",substr($ack_msg,2,1));
            #printf("ack_msg3 =%d\n",substr($ack_msg,3,1));
            #my $ack_msg1 = unpack('C',$ack_msg);
            #$ack_msg = pack('C',0x0f);
            #$ack_msg =  pack('N', $pcap_len);
            #my $ack_msg2 = unpack('N', $ack_msg);
            #printf("ack_msg2=%d\n",$ack_msg2);
            #$ack_msg =  pack('N', $pcap_len);
            ##print "ack_msg2=$ack_msg\n";
            #$ack_msg = pack('C',0x0f) . pack('N', $pcap_len);
            #printf("ack_msg_length=%d\n",length($ack_msg));

            for($idx=length($ack_msg);$idx<$MSG_LEN;$idx++)
            {
                $ack_msg = $ack_msg . pack('C',0);
            }
            printf("ack_msg_length2=%d\n",length($ack_msg));
         
            for($id=0;$id<length($ack_msg);$id++){
                my $tmp = substr($ack_msg,$id,1);
                printf("ack_msg4(%d)=%d\n",$id,unpack('C', $tmp));
            };

            print "ack_msg =$ack_msg\n";
            print "opt_duart =$opt_duart\n";
            printf("preparing sending $pcap_file with length %d ...\n",$pcap_len);
            print "opt_duart =\t\n";
            print "opt_duart =\n";

