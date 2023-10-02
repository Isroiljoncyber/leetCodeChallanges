main() {
  var result = Solution().lengthOfLastWord("luffy is still joyboy");
  print(result);
}

class Solution {
  int lengthOfLastWord(String s) {
    var split = s.split(' ');
    for (var i = split.length - 1; i > 0; i--) {
      if (split[i].isNotEmpty)
        return split[i].length;
      else
        split.removeAt(i);
    }
    return split.last.length;
  }
}
