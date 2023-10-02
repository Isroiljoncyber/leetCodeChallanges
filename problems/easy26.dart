main() {
  var nums = [1, 1, 1];
  var result = Solution().removeDuplicates(nums);
}

class Solution {
  int removeDuplicates(List<int> nums) {
    Set<int> unique = {};
    for (int i = 0; i < nums.length; i++) {
      unique.add(nums[i]);
    }
    nums..clear()..addAll(unique.toList());
    return nums.length;
  }
}
