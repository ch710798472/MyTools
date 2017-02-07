#!/usr/bin/expect
set timeout 30
if { [llength $argv] < 1} {  
    puts "Usage:"  
    puts "$argv0 ip"  
    exit 1  
}  
spawn ssh banmo.ch@[lindex $argv 0]

expect {  
    "*assword:*" {  
        set timeout 1000  
        send "xxxxxxxxxx\r"  
       #exp_continue  
    }  
    "*es/no)?*" {  
        send "yes\r"  
        exp_continue  
    } 
    timeout {  
        puts "connect is timeout"  
        exit 3  
    }  
} 
send "cd /home/admin/[lindex $argv 1]/logs/\n"
send "tail -f -n 100 [lindex $argv 1].log\n"
interact 
