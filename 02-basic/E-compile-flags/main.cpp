#include <iostream>
using namespace std;

int main() {
  cout << "Compile flags: " << endl;

#ifdef EX1
  cout << "EX1" << endl;
#endif

#ifdef EX2
  cout << "EX2" << endl;
#endif

  return 0;
}