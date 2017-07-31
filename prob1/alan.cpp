#include<iostream>

using namespace std;

int main() {

        int the_answer=0;
        for(int number=0; number < 1000; number++) {

                if(number % 5 == 0 || number % 3 == 0) {
                        the_answer = the_answer + number;
                }
        }

        cout<<"The answer is: "<<the_answer<<endl;

        return 0;
}
