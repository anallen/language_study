#include <iostream>
using namespace std;
int main ()
{
    char num;
    cin >> num;
    //cout << "The input number is " << num << endl; 
    switch(num){
        case '0':
            cout<< "you input number is " << num << endl;
            break;
        case '1':
            cout<< "you input number is " << num << endl;
            break;
        case '3':
            cout<< "you input number is " << num << endl;
            break;
        case '4':
            cout<< "you input number is " << num << endl;
            break;
        default:
            cout<< "The input number rang is 1-4 " << endl;
            break;
    }
}
