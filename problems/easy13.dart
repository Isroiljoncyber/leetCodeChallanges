class Solution {
  int romanToInt(String s) {
    int result = 0;
    for (int i = 0; i < s.length; i++) {
      if (i<s.length-1 && (toInt(s[i]) < toInt(s[i+1]))) {
        result += (toInt(s[i + 1]) - toInt(s[i]));
        i++;
        continue;
      }
      result += toInt(s[i]);
    }
    return result;
  }

  int toInt(String s) {
    switch (s) {
      case "I":
        return 1;
      case "V":
        return 5;
      case "X":
        return 10;
      case "L":
        return 50;
      case "C":
        return 100;
      case "D":
        return 500;
      case "M":
        return 1000;
      default:
        return 1;
    }
  }
}

// SUBMITTED
// main() {
//   print(Solution().romanToInt("MCMXCIV"));
// }
