import 'package:leetcode/exercises/add_two_numbers.dart';
import 'package:leetcode/models/list_node.dart';
import 'package:test/test.dart';

void main() {
  group("Other Exercises", (){
    exercise();
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
