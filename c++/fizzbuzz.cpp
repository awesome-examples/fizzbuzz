#include <iostream>

using namespace std;

int main(int argc, char **argv) {
    const int start = 0; //inclusive
    const int end = 100; //exclusive

    for (int current = start; current < end; current++) {
        cout << current << ": ";

        if (current % 3 == 0) {
            cout << "Fizz";
        }
        if (current % 5 == 0) {
            cout << "Buzz";
        }

        cout << endl;
    }

    return 0;
}
