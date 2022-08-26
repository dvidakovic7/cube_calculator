import "dart:math";
import "dart:collection";
import "package:collection/collection.dart";
import 'solve_collector.dart';
void main() {
  
  print("Welcome to Cube Average Calculator!\n");

  List<double> cubeSolves = [];

  for (int solveNumber = 1; solveNumber<=10000; solveNumber++)
  {
    double solve = solveCollector(solveNumber);
    cubeSolves.add(solve); 
   
    double slowestSolve = cubeSolves.reduce(max);
    double fastestSolve = cubeSolves.reduce(min);
    
    double sumSolvesAll = cubeSolves.sum - (slowestSolve + fastestSolve); 
    double averageOfAll = sumSolvesAll/(solveNumber-2);
  
  if (solveNumber < 5) 
    {
      print("\nBest single is ${fastestSolve}");
    }

  if (solveNumber >= 5)
    {
      print("\nBest single is ${fastestSolve}");
      print("Worst single is ${slowestSolve}");
      print("Current average of ${solveNumber} solves is: ${averageOfAll.toStringAsFixed(2)}");
    }

  // Avg of last 5 calculation, shows only if there are 5 or more solves
  if (solveNumber >= 6 ) {

      List<double> reversed5 = List.of(cubeSolves.reversed.take(5));
      double slowestSolveOfLast5 = reversed5.reduce(max);
      double fastestSolveOfLast5 = reversed5.reduce(min);
      double sumLast5Solves = reversed5.sum - (slowestSolveOfLast5 + fastestSolveOfLast5);
      double averageOfLast5Solves = sumLast5Solves/3;
      print("Average of last 5 solves is: ${averageOfLast5Solves.toStringAsFixed(2)}");
      }
    
  // Current avg12 calculation, shows only if there are 12 or more solves
  if (solveNumber >= 12) {

      List<double> reversed12 = List.of(cubeSolves.reversed.take(12));
      double slowestSolveOfLast12 = reversed12.reduce(max);
      double fastestSolveOfLast12 = reversed12.reduce(min);
      double sumLast12Solves = reversed12.sum - (slowestSolveOfLast12 + fastestSolveOfLast12);
      double averageOfLast12Solves = sumLast12Solves/10;
      print("Average of last 12 solves is: ${averageOfLast12Solves.toStringAsFixed(2)}\n");
      }
  // Current avg50 calculation, shows only if there are 50 or more solves
  if (solveNumber >= 50) {

      List<double> reversed50 = List.of(cubeSolves.reversed.take(50));
      double slowestSolveOfLast50 = reversed50.reduce(max);
      double fastestSolveOfLast50 = reversed50.reduce(min);
      double sumLast50Solves = reversed50.sum - (slowestSolveOfLast50 + fastestSolveOfLast50);
      double averageOfLast50Solves = sumLast50Solves/48;
      print("Average of last 50 solves is: ${averageOfLast50Solves.toStringAsFixed(2)}\n");
      }
   // Current avg50 calculation, shows only if there are 50 or more solves
   if (solveNumber >= 100) {

      List<double> reversed100 = List.of(cubeSolves.reversed.take(100));
      double slowestSolveOfLast100 = reversed100.reduce(max);
      double fastestSolveOfLast100 = reversed100.reduce(min);
      double sumLast100Solves = reversed100.sum - (slowestSolveOfLast100 + fastestSolveOfLast100);
      double averageOfLast100Solves = sumLast100Solves/98;
      print("Average of last 100 solves is: ${averageOfLast100Solves.toStringAsFixed(2)}\n");
      }
  }      
}
