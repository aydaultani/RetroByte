#pragma once

enum Type {
    PUSH,
    POP,
    ADD,
    SUB,
    MULT,
    DIV,
    MV_C_B
};

class Instruction {
    public:
        Type type;
        int val;
};