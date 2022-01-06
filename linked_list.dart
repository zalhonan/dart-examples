void main() {
  final l1 = LinkedList();
  print(l1);
  l1.addAtTail(1);
  l1.addAtTail(2);
  l1.addAtTail(3);
  print(l1);
  l1.addAtIndex(2, 1000);
  print(l1);
  l1.deletAtIndex(1);
  print(l1);
  print(l1.getAtIndex(2));
}

class ListNode {
  int value;
  ListNode? next;

  ListNode({
    required this.value,
    this.next,
  });

  @override
  String toString() {
    return value.toString();
  }
}

class LinkedList {
  ListNode? head;
  int size = 0;

  LinkedList({
    this.head,
  });

  int getAtIndex(int index) {
    if (index < 0 || index >= size) {
      return -1;
    }
    var current = head;
    for (var i = 0; i < index; i++) {
      current = current!.next;
    }
    return current!.value;
  }

  void addAtTail(int val) {
    addAtIndex(size, val);
  }

  void addAdhead(int val) {
    addAtIndex(0, val);
  }

  void addAtIndex(int index, int val) {
    if (index > size) {
      index = size;
    }

    var current = head;
    final newNode = ListNode(value: val);

    if (index <= 0) {
      newNode.next = current;
      head = newNode;
    } else {
      for (var i = 0; i < index - 1; i++) {
        current = current!.next;
      }
      newNode.next = current!.next;
      current.next = newNode;
    }
    size++;
  }

  void deletAtIndex(int index) {
    if (index < 0 || index > size) {
      return;
    }
    var current = head;

    if (index == 0) {
      head = head!.next;
    } else {
      for (var i = 0; i < index - 1; i++) {
        current = current!.next;
      }
      current!.next = current.next!.next;
    }
    size--;
  }

  @override
  String toString() {
    List<int> ans = [];
    var current = head;
    for (var i = 0; i < size; i++) {
      ans.add(current!.value);
      current = current.next;
    }
    return ans.toString();
  }
}
