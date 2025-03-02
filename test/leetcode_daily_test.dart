import 'package:leetcode/exercises/add_two_numbers.dart';
import 'package:leetcode/exercises/daily/2025/03/daily20250301.dart';
import 'package:leetcode/exercises/daily/2025/03/daily20250302.dart';
import 'package:leetcode/models/list_node.dart';
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
}
