class Solution {
  bool isValid(String s) {
    List<String> stack = [];
    for (var c in s.split('')) {
      if (c == '(' || c == '[' || c == '{')
        stack.add(c);
      else {
        if (stack.isEmpty) return false;
        if (c == ')' && stack.last == '(')
          stack.removeLast();
        else if (c == ']' && stack.last == '[')
          stack.removeLast();
        else if (c == '}' && stack.last == '{')
          stack.removeLast();
        else
          return false;
      }
    }
    return stack.isEmpty;
  }
}

main() {
  print(Solution().isValid("(])"));
}
