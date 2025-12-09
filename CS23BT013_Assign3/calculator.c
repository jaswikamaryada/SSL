#include<stdio.h>
int main()
{
  char c;
  int a,b;
  printf("enter the first number");
  scanf("%d", &a);
  printf("enter the second number");
  scanf("%d", &b);
  printf("enter operator (+, -, *, /):");
  scanf(" %c", &c);
  if(c == '+')
    {
      int d = a+b;	    
      printf("result: %d",d);
    }
  else if(c == '-')
  { 
      int e = a-b;
      printf("result: %d",e);
  }
  else if(c=='*')
  {
      int f= a*b;
      printf("result: %d",f);
  }
 else if(c == '/')
  {
     if(b!=0)
     {
      int g= a/b;
      printf("result: %d",g);
     }
     else
     {
      printf("Error:Division by zero");
     }
  }
  else
   {
     printf("Error:Invalid operator");
   }

}        	       
            
    
