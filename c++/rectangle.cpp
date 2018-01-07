#include <iostream>
using namespace std;
class shape
{
    public:
        void setwidth(int w){
            width = w;
        }
        void setHeight(int h){
            height = h;
        }
    protected:
        int width;
        int height;
};

class rectangle: public shape{
    public:
       int getarea(){
           return(width*height);
       }
};

int main(viod)
{
    rectangle rect;
    rect.setwidth(5);
    rect.setheight(6);
    cout << "The retangle area is "<< rect.getarea()<< endl;
    return 0;
}
 
