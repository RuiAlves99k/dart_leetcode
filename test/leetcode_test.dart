import 'package:leetcode/exercises/add_two_numbers.dart';
import 'package:leetcode/exercises/daily/2025/03/daily20250301.dart';
import 'package:leetcode/models/list_node.dart';
import 'package:test/test.dart';

void main() {
  group("Daily Exercises", (){
    dailyExercises();
  });
  group("Other Exercises", (){
    exercise();
  });
}

void dailyExercises() {
  test('Daily 2025-03-01', () {
    final daily = Daily20250301();
    expect(daily.applyOperations([1, 2, 2, 1, 1, 0]), [1, 4, 2, 0, 0, 0]);
    expect(daily.applyOperations([0, 0]), [1, 0]);
  });
}

void exercise() {
  test("add two numbers", () {
    final addTwoNumbers = AddTwoNumbers();
    expect(
      addTwoNumbers
          .addTwoNumbers(
            ListNode.generateFromList([2, 4, 3]),
            ListNode.generateFromList([5, 6, 4]),
          )
          ?.toList(),
      [7, 0, 8],
    );
    expect(
      addTwoNumbers
          .addTwoNumbers(
        ListNode.generateFromList([1, 2, 3]),
        ListNode.generateFromList([1, 2, 7, 4]),
      )
          ?.toList(),
      [2, 4, 0, 5],
    );
    expect(
      addTwoNumbers
          .addTwoNumbers(
            ListNode.generateFromList([0]),
            ListNode.generateFromList([0]),
          )
          ?.toList(),
      [0],
    );
    expect(
      addTwoNumbers
          .addTwoNumbers(
            ListNode.generateFromList([9, 9, 9, 9, 9, 9, 9]),
            ListNode.generateFromList([9, 9, 9, 9]),
          )
          ?.toList(),
      [8, 9, 9, 9, 0, 0, 0, 1],
    );
    expect(
      addTwoNumbers
          .addTwoNumbers(
        ListNode.generateFromList([1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1]),
        ListNode.generateFromList([5,6,4]),
      )
          ?.toList(),
      [6,6,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1],
    );

  });
}
