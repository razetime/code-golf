#!/usr/bin/perl
#Program for powers of Pi
use Math::Trig;
use Math::BigFloat;
$n=1;
print substr(Math::BigFloat->bpi()**(1/$n++),0,index($n,'.')+22).$/ while($n<13);