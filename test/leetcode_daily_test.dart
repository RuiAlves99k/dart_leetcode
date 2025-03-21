import 'package:leetcode/exercises/daily/2025/03/daily20250301.dart';
import 'package:leetcode/exercises/daily/2025/03/daily20250302.dart';
import 'package:leetcode/exercises/daily/2025/03/daily20250303.dart';
import 'package:leetcode/exercises/daily/2025/03/daily20250304.dart';
import 'package:leetcode/exercises/daily/2025/03/daily20250305.dart';
import 'package:leetcode/exercises/daily/2025/03/daily20250310.dart';
import 'package:test/test.dart';

void main() {
  group("Daily Exercises", (){
    dailyExercises();
  });
}

void dailyExercises() {
  test('Daily 2025-03-01', () {
    final daily = Daily20250301();
    expect(daily.applyOperations([1, 2, 2, 1, 1, 0]), [1, 4, 2, 0, 0, 0]);
    expect(daily.applyOperations([0, 1]), [1, 0]);
  });
  test('Daily 2025-03-02', (){
    final daily = Daily20250302();
    expect(daily.mergeArrays([[1,2],[2,3],[4,5]], [[1,4],[3,2],[4,1]]), [[1,6],[2,3],[3,2],[4,6]]);
    expect(daily.mergeArrays([[2,4],[3,6],[5,5]], [[1,3],[4,3]]), [[1,3],[2,4],[3,6],[4,3],[5,5]]);
  });
  test('Daily 2025-03-03', (){
    final daily = Daily20250303();
    expect(daily.pivotArray([9,12,5,10,14,3,10], 10), [9,5,3,10,10,12,14]);
    expect(daily.pivotArray([-3,4,3,2], 2), [-3,2,4,3]);
  });
  test('Daily 2025-03-04', (){
    final daily = Daily20250304();
    expect(daily.checkPowersOfThree(12) , true);
    expect(daily.checkPowersOfThree(91), true);
    expect(daily.checkPowersOfThree(21), false);
  });
  test('Daily 2025-03-05', (){
    final daily = Daily20250305();
    expect(daily.coloredCells(1), 1);
    expect(daily.coloredCells(2), 5);
    expect(daily.coloredCells(3), 13);
  });
  test('Daily 2025-03-10', (){
    final daily = Daily20250310();
    expect(daily.countOfSubstrings("aeioqq", 1), 0);
    expect(daily.countOfSubstrings('aeiou', 0), 1);
    expect(daily.countOfSubstrings('ieaouqqieaouqq', 1), 3);
    expect(daily.countOfSubstrings('iqeaouqi', 2), 3);
    expect(daily.countOfSubstrings('aeueio', 0), 1);
  });
}
