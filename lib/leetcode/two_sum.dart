class Solution {
  List<int> twoSum(List<int> nums, int target) {
      Map indexMap={};
      for(var i=0;i<nums.length;i++){
          var requiredNum = (target - nums[i]);
          if(indexMap.containsKey(requiredNum)){
              return [indexMap[requiredNum],i];
            }

            indexMap[nums[i]]= i;
        }
        return [];
    }
      }