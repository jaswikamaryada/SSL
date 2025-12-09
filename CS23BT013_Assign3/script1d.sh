#!/bin/bash

awk '{
       if($2 >= 85)
	 print $1,$2,"A";
       
       else if($2 >= 70 && $2 <= 84)
         print $1,$2,"B";

       else if($2 >= 40 && $2 <= 69)
         print $1,$2,"C";
 
       else if($2 < 40) 
         print $1,$2,"F";
 }' data.txt	 
