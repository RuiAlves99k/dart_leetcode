import 'package:leetcode/models/list_node.dart';

///You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order, and each of their nodes contains a single digit. Add the two numbers and return the sum as a linked list.

/// You may assume the two numbers do not contain any leading zero, except the number 0 itself.
/// Example 1
/// [assets/add_two_numbers/addtwonumber1.jpg]
/// Input: l1 = [2,4,3], l2 = [5,6,4]
/// Output: [7,0,8]
/// Explanation: 342 + 465 = 807.
/// Example 2:
///
/// Input: l1 = [0], l2 = [0]
/// Output: [0]
/// Example 3:
///
/// Input: l1 = [9,9,9,9,9,9,9], l2 = [9,9,9,9]
/// Output: [8,9,9,9,0,0,0,1]
class AddTwoNumbers {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    ListNode? tempL1 = l1;
    ListNode? tempL2 = l2;
    ListNode? head;
    ListNode? tail;
    int sum;
    int carry = 0;
    while (tempL1 != null || tempL2 != null){
      sum = (tempL1?.val ?? 0) + (tempL2?.val ?? 0) + carry;
      carry = sum ~/ 10;
      sum = sum % 10;

      if (tail == null){
        head = ListNode(sum);
        tail = head;
      } else {
        tail.next = ListNode(sum);
        tail = tail.next;
      }
      tempL1 = tempL1?.next;
      tempL2 = tempL2?.next;
    }
    if (carry > 0){
      tail?.next = ListNode(carry);
    }
    return head;
  }
}
