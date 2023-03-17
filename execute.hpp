#include "instruction.hpp"
#include "vector"
#include <iostream>

void execute(std::vector<Instruction> &reg_A, std::vector<int> &reg_B, int &reg_C, int &reg_D, bool stacktrace)
{
    if (stacktrace) std::cout << "========================\n";
    if (stacktrace) std::cout << "=== STACKTRACE BEGIN ===\n";
    if (stacktrace) std::cout << "========================\n";
    for (int i = 0; i < reg_A.size(); i++)
    {
        switch(reg_A[i].type) {
            case Type::PUSH: {
                if (stacktrace) std::cout << "PUSH " << reg_A[i].val << std::endl;
                reg_B.push_back(reg_A[i].val);
                break;
            }
            case Type::POP: {
                reg_B.erase(reg_B.begin());
                break;
            }
            case Type::ADD: {
                int sum = 0;
                for (int i = 0; i < reg_B.size(); i++)
                {
                    sum += reg_B[i];
                    if (stacktrace) std::cout << "ADD " << reg_B[i] << " | RES " << sum << std::endl;
                }
                reg_B.clear();
                reg_C = sum;
                break;
            }
            case Type::SUB: {
                if (reg_B.size() > 2)
                {
                    reg_D = 2;
                    break;
                }
                int diff = reg_B[1] - reg_B[0];
                reg_B.clear();
                reg_C = diff;
                break;
            }
            case Type::DIV: {
                if (reg_B.size() > 2)
                {
                    reg_D = 3;
                    break;
                }
                if (reg_B[0] == 0) {
                    reg_D = 1;
                    break;
                }
                int div = reg_B[1] / reg_B[0];
                if (stacktrace) std::cout << "DIV " << reg_B[1] << " " << reg_B[0] << std::endl;
                reg_B.clear();
                reg_C = div;
                break;
            }
            case Type::MULT: {
                int mult = 1;
                for (int i = 0; i < reg_B.size(); i++) {
                    mult = mult * reg_B[i];
                    if (stacktrace) std::cout << "MULT " << reg_B[i] << " | RES " << mult << std::endl;
                }
                reg_B.clear();
                reg_C = mult;
                break;
            }
            case Type::MV_C_B: {
                if (stacktrace) std::cout << "MVCB\n";
                reg_B.push_back(reg_C);
                reg_C = 0;
            }
        };
    }
    if (stacktrace) std::cout << "======================\n";
    if (stacktrace) std::cout << "=== STACKTRACE END ===\n";
    if (stacktrace) std::cout << "======================\n";
}