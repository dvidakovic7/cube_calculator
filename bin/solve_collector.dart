import "dart:io";

double solveCollector (int solveNumber) {
    print("\nEnter solve ${solveNumber}:\n");
    double solve = double.parse(stdin.readLineSync()!);
    return solve;
} 