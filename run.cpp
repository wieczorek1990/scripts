#include <cstdio>
#include <cstdlib>
#include <iostream>

using namespace std;

string exec(char* cmd) {
    static const int BUF_SIZE = 128;
    FILE* pipe = popen(cmd, "r");
    if (!pipe) return "ERROR";
    char buffer[BUF_SIZE];
    string result = "";
    while(!feof(pipe)) {
        if(fgets(buffer, BUF_SIZE, pipe) != NULL)
            result += buffer;
    }
    pclose(pipe);
    return result;
}

int main(int argc, char *argv[]) {
    if (argc == 2) {
        cout << exec(argv[1]);
    } else {
        cout << "run command";
        return EXIT_FAILURE;
    }
    return EXIT_SUCCESS;
}
