import "dart:io";

double solveCollector (int solveNumber) {
    print("Enter solve ${solveNumber}:");
    double solve = double.parse(stdin.readLineSync()!);
    return solve;
} 