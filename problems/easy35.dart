main() {
  var result = Solution().searchInsert([1,3,5,6], 2);
  print(result);
}

class Solution {
  int searchInsert(List<int> nums, int target) {
    if(nums.contains(target)){
      return nums.indexOf(target);
    } else {
      nums..add(target)..sort();
      return nums.indexOf(target);
    }
  }
}
