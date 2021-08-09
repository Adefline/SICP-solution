int searchInsert(int* nums, int numsSize, int target){
int ret = 0;
for(int i=0;i<numsSize;i++){
    if(nums[numsSize-1]<target){
            return numsSize;
        }else if(nums[i]==target){
        return i;
        }else if(nums[i]<target && nums[i+1]>target){
        ret = i+1;}}
    return ret;
}
