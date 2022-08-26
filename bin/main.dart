import "dart:math";
import "dart:collection";
import 'dart:typed_data';
import "package:collection/collection.dart";
import "solve_collector.dart";
import 'all_solves.dart';
import 'avg_calc.dart';

void main() 
{
  
  print("Welcome to Cube Calculator by Dominik Vidaković!\n");

  int solveNumber = 1;
  
  while (solveNumber > 0)
  {

    double solve = solveCollector(solveNumber);
    Solves().cubeSolves.add(solve);   
  
  if (solveNumber < 5) {
    
      print ("Best single is ${bestSingle()}");
    }
  }     
  solveNumber++;

}
  /* GOING TO USE SOMETHING OF THIS LATER...MAYBE XD
  if (solveNumber >= 5)
    {
      print("\nBest single is ${fastestSolve}");
      print("Worst single is ${slowestSolve}");
      print("Current average of ${solveNumber} solves is: ${avgOf5(avg5Result)}");
    }

  
  // Avg of last 5 calculation, shows only if there are 5 or more solves
  if (solveNumber >= 6 ) {

      List<double> reversed5 = List.of(Solves().cubeSolves.reversed.take(5));
      double slowestSolveOfLast5 = reversed5.reduce(max);
      double fastestSolveOfLast5 = reversed5.reduce(min);
      double sumLast5Solves = reversed5.sum - (slowestSolveOfLast5 + fastestSolveOfLast5);
      double averageOfLast5Solves = sumLast5Solves/3;
      print("Average of last 5 solves is: ${averageOfLast5Solves.toStringAsFixed(2)}");
      }
    
  // Current avg12 calculation, shows only if there are 12 or more solves
  if (solveNumber >= 12) {

      List<double> reversed12 = List.of(Solves().cubeSolves.reversed.take(12));
      double slowestSolveOfLast12 = reversed12.reduce(max);
      double fastestSolveOfLast12 = reversed12.reduce(min);
      double sumLast12Solves = reversed12.sum - (slowestSolveOfLast12 + fastestSolveOfLast12);
      double averageOfLast12Solves = sumLast12Solves/10;
      print("Average of last 12 solves is: ${averageOfLast12Solves.toStringAsFixed(2)}\n");
      }*/