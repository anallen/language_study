#include <iostream>
using namespace std;
int main()
{
#if (DEVICE==LS2088A)
    cout << "This is a LS2088A" <<endl;
#endif
#ifdef DBUG
    cout << "Hello, world!" << endl;
#endif
    cout << "Hello, world!\n";
    return 0;
}
