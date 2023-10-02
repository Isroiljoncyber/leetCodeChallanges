//Definition for singly-linked list.
class ListNode {
  int val;
  ListNode? next;

  ListNode([this.val = 0, this.next]);

  @override
  String toString() {
    return '$val ${next ?? ''}';
  }
}

class Solution {
  ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
    if (list1 == null) return list2;
    if (list2 == null) return list1;
    List<int> mergedList = [];
    ListNode node = list1;
    mergedList.add(node.val);
    while (node.next != null) {
      node = node.next!;
      mergedList.add(node.val);
    }
    node = list2;
    mergedList.add(node.val);
    while (node.next != null) {
      node = node.next!;
      mergedList.add(node.val);
    }
    mergedList.sort((a, b) => a.compareTo(b));
    ListNode sorted = ListNode(mergedList.last);
    for (var a = mergedList.length - 2; a >= 0; a--) {
      sorted = ListNode(mergedList[a], sorted);
    }
    return sorted;
  }
}

main() {
  print(Solution()
      .mergeTwoLists(ListNode(1, ListNode(2, ListNode(4))), ListNode(1, ListNode(3, ListNode(4))))
      .toString());
}
