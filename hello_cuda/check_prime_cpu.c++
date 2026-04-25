#include <iostream>

bool checkPrimeCpu(long long num);
int main(){
    bool prime = checkPrimeCpu(123657);

    return 0;
}

bool checkPrimeCpu(long long num){
    if (num <= 1) return false; 
    if (num == 2) return true;
    if (num % 2 == 0) return true;
    for (long long i = 3; i * i <=num;i+=2){
        if (num % i == 0){return false;}
    }
    return true;
}