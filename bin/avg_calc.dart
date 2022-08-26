import "dart:math";
import "dart:collection";
import "package:collection/collection.dart";
import "solve_collector.dart";
import 'all_solves.dart';

class Average {

	Average(double aBestsolve, double aWorstSolve, double aSumSolves, int aSolveNumber){
		this.bestSolve = aBestsolve;
		this.worstSolve = aWorstSolve;
		this.sumSolves= aSumSolves;
    this.solveNumber = aSolveNumber;
	}

	double? bestSolve;
  double? worstSolve;
  double? sumSolves;
  int? solveNumber; 

}

double bestSingle () {

  double bestSingle = Solves().cubeSolves.reduce(min);

  return bestSingle;

}

double worstSingle () {

  double worstSingle = Solves().cubeSolves.reduce(max);

  return worstSingle;

}

double avgOf5 () {

Average avgOf5 =  Average(Solves().cubeSolves.reduce(min), Solves().cubeSolves.reduce(max), Solves().cubeSolves.sum, 5);
double avg5Result = ((avgOf5.sumSolves)! - avgOf5.bestSolve! - avgOf5.worstSolve!)  / (avgOf5.solveNumber as int) - 2;

return avg5Result;
}

double avgOf12 () {

Average avgOf12 =  Average(Solves().cubeSolves.reduce(min), Solves().cubeSolves.reduce(max), Solves().cubeSolves.sum, 12);
double avg12Result = ((avgOf12.sumSolves)! - avgOf12.bestSolve! - avgOf12.worstSolve!)  / (avgOf12.solveNumber as int) - 2;

return avg12Result;
}