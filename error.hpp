void error_check(std::vector<int> &reg_B, int &reg_D, bool stacktrace)
{
    if (reg_D != 0)
    {
        std::cout << "ERROR " << reg_D << std::endl;
        if (stacktrace)
            std::cout << "========================\n";
        if (stacktrace)
            std::cout << "=== ERROR BEGIN ===\n";
        if (stacktrace)
            std::cout << "========================\n";
        if (reg_D == 1)
        {
            std::cout << "ERR: DIVISION BY 0\n";
        }
        else if (reg_D == 2)
        {
            std::cout << "ERR: SUB MORE THAN 3 ELEMENTS\n";
        }
        else if (reg_D == 3)
        {
            std::cout << "ERR: DIV MORE THAN 3 ELEMENTS\n";
        }
        std::cout << "ELEMENTS:\n";
        for (int i = 0; i < reg_B.size(); i++)
        {
            std::cout << reg_B[i] << "\n";
        }
        if (stacktrace)
            std::cout << "========================\n";
        if (stacktrace)
            std::cout << "=== ERROR END ===\n";
        if (stacktrace)
            std::cout << "========================\n";
    }
}