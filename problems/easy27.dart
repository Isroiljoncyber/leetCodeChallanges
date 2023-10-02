main() {
  var nums = [0,1,2,2,3,0,4,2];
  var result = Solution().removeElement(nums, 2);
}

class Solution {
  int removeElement(List<int> nums, int val) {
    List<int> newList= [];
    for (int i = 0; i < nums.length; i++) {
      if(nums[i]!=val){
        newList.add(nums[i]);
      }
    }
    nums..clear()..addAll(newList);
    return nums.length;
  }
}
