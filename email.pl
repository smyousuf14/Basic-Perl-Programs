#!/usr/bin/perl

# Sending email on Linux/Unix machines
$to = "smyousuf@ryerson.ca";
$from = "smyousuf@yourdomain.com";
$subject = "Test";
$message = "This is a test message";

open(MAIL, "|/usr/sbin/sendmail -t");

# Email Header 
print MAIL "To: $to\n";
print MAIL "From: $from\n";
print MAIL "Subject: $subject\n";

#email body
print MAIL $message;

close(MAIL);
print "Email Send Successfully. \n";
