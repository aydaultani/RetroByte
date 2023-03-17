#include <iostream>
#include <vector>
#include "instruction.hpp"
#include "execute.hpp"
#include "error.hpp"

int main() {
    std::vector<Instruction> reg_A;
    std::vector<int> reg_B;
    int reg_C = 0;
    int reg_D = 0;
    bool stacktrace = true;

    Instruction i = Instruction {Type::PUSH, 10};
    Instruction i1 = Instruction {Type::PUSH, 20};
    Instruction i2 = Instruction {Type::PUSH, 40};
    Instruction i3 = Instruction {Type::SUB};

    reg_A.push_back(i);
    reg_A.push_back(i1);
    reg_A.push_back(i2);
    reg_A.push_back(i3);

    execute(reg_A, reg_B, reg_C, reg_D, stacktrace);

    std::cout << "OUTPUT " << reg_C << std::endl;
    error_check(reg_B, reg_D, stacktrace);
    

    return 1;
}