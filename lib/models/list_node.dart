/// Class to represent a linked list
class ListNode {
  int val;
  ListNode? next;

  ListNode([this.val = 0, this.next]);

  /// Create a ListNode object from a list of integers
  static ListNode? generateFromList(List<int> values) {
    ListNode? temp = null;
    values.reversed.forEach((value) {
      if (temp == null){
        temp = ListNode(value);
      } else {
        temp = ListNode(value, temp);
      }
    });
    return temp;
  }

  /// Function returns the linked list in form of list
  List<int> toList(){
    List<int> list = [];
    ListNode? node = this;
    while (node != null){
      list.add(node.val);
      node = node.next;
    }
    return list;
  }
}
