class Solution {
  String longestCommonPrefix(List<String> strs) {
    if(strs.length==1) return strs.first;
    String res = '';
    for(int i=0; i<=strs.first.length;i++){
      int c = 0;
      res = strs.first.substring(0,i);
      for(var e in strs){
          if(e.startsWith(res))
          c++;
      }
      if(c==0) break;
      if(c!=strs.length)
      res = "";
    }
    return res;
  }
}

main() {
  print(Solution().longestCommonPrefix(["c","acc","ccc"]));
}