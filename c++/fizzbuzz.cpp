// CPP program to print Fizz Buzz 
#include <bits/stdc++.h> 

using namespace std;
int main() 
{ 
    int i; 
    for (i=1; i<=100; i++) 
    { 
        // number divisible by 3 and 5 will always be divisible by 15, print 'FizzBuzz' in place of the number 
        if (i%15 == 0)         
            cout<<"FizzBuzz\t";     
          
        // number divisible by 3 print 'Fizz' in place of the number 
        else if ((i%3) == 0)     
            cout<<"Fizz\t";                  
          
        // number divisible by 5, print 'Buzz' in place of the number 
        else if ((i%5) == 0)                        
            cout<<"Buzz\t";                  
      
        else // print the number             
            cout<<i<<"\t";                  
  
    } 
  
    return 0; 
} 