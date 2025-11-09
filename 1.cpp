// #include <iostream>
// #include <conio.h>     // for _getch()
// #include <windows.h>   // for cursor control

// using namespace std;

// void moveCursor(int x, int y) {
//     COORD coord = { (SHORT)x, (SHORT)y };
//     SetConsoleCursorPosition(GetStdHandle(STD_OUTPUT_HANDLE), coord);
// }

// int main() {
//     int x = 10, y = 10; // start position
//     moveCursor(x, y);
//     cout << "|"; // show initial cursor mark

//     while (true) {
//         int ch = _getch(); // get key press
//         if (ch == 0 || ch == 224) { // arrow keys
//             ch = _getch();
//             if (ch == 75 && x > 0) x--;        // left arrow
//             else if (ch == 77) x++;            // right arrow
//             moveCursor(x, y);
//             cout << "|"; // show cursor mark
//         } else if (ch == 27) break; // ESC to exit
//     }

//     return 0;
// }

#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;

int main()
{
    int a, b;
    char arr[9][10] = {"one", "two", "three", "four", "five", "six", "seven", "eight", "nine"};
    cin >> a >> b;

    if (a < b)
    {
        int c;
        if (b > 9)
            c = 9;
        else
            c = b;
        for (int i = (a - 1); i < c; i++)
        {
            cout << arr[i] << endl;
        }
        if (b > 9)
        {
            for (int i = 10; i <= b; i++)
            {
                if (i % 2 == 0)
                {
                    cout << "even" << endl;
                }
                else
                {
                    cout << "odd" << endl;
                }
            }
        }
    }
    else if (a == b)
    {
        if (a >= 1 && a <= 9)
        {
            cout << arr[a - 1] << endl;
        }
        else
        {
            if (a % 2 == 0)
            {
                cout << "even" << endl;
            }
            else
            {
                cout << "odd" << endl;
            }
        }
    }
    else
    {
        cout << "invalid input" << endl;
    }

    return 0;
}
