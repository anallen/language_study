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

        int getarea(){
           return(width*height);
        }
    protected:
        int width;
        int height;
};

int main(void)
{
    shape rect;
    rect.setwidth(5);
    rect.setHeight(6);
    cout << "The retangle area is "<< rect.getarea()<< endl;
    return 0;
}
 
