main() {
  var result = Solution().strStr("sadbutsad", "sad");
  print(result);
}

class Solution {
  int strStr(String haystack, String needle) {
    return haystack.indexOf(needle);
  }
}
