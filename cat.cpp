#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include <queue>
#include <vector>

void processBuffer(std::queue<std::string> &optionArgs, std::stringstream &buffer)
{
    bool showEnds = false, numberLines = false;

    while (!optionArgs.empty()) {
        std::string option = optionArgs.front();
        optionArgs.pop();

        if (option == "-E" || option == "--show-ends") {
            showEnds = true;
        } else if (option == "-n" || option == "--number") {
            numberLines = true;
        }
    }

    std::string content = buffer.str();
    std::stringstream contentStream(content);

    std::string line;
    std::vector<std::string> lines;

    while (std::getline(contentStream, line)) {
        lines.push_back(line);
    }

    for (size_t i = 0; i < lines.size(); ++i) {
        if (numberLines) {
            std::cout << i+1 << "\t";
        }
        std::cout << lines[i];
        if (showEnds && i < lines.size() - 1) {
            std::cout << "$";
        }
        if(i != lines.size() - 1) {
            std::cout << "\n";
        }
    }
    
    if (showEnds && content.back() == '\n') {
        std::cout << "$\n";
    }
}


int main(int ac, char **av)
{
    if (ac == 1) {
        std::string input;

        while (std::getline(std::cin, input)) {
            std::cout << input << std::endl;
        }
    }
    std::queue<std::string> optionArgs;
    std::queue<std::string> non_option;
    bool errorOccurred = false;

    for (uint32_t i = 1; i < ac; ++i) {
        std::string arg = av[i];

        if (arg.size() > 1 && arg[0] == '-') {
            optionArgs.push(arg);
        } else {
            non_option.push(arg);
        }
    }

    std::stringstream buffer;

    while (!non_option.empty()) {
        std::string filename = non_option.front();
        non_option.pop();

        std::ifstream file(filename);
        if (!file) {
            std::cerr << "cat: " << filename + ": No such file or directory" << std::endl;
            errorOccurred = true;
            continue;
        }

        buffer << file.rdbuf();

        file.close();
    }

    processBuffer(optionArgs, buffer);

    return errorOccurred ? 1 : 0;
}
