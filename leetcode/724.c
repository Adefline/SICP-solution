int pivotIndex(int* nums, int numsSize){

    int left=0;
    int right=0;
for (int n=0;n<numsSize;n++){
    left = 0;
    for(int i=0;i<n;i++){
        left+=nums[i];
    }
    right = 0;
    for(int i=n+1;i<numsSize;i++){
        right+=nums[i];
    }
    if(left==right)
    {return n;}
}
    return -1;
}
/*
int pivotIndex(int* nums, int numsSize){

    int left=0;
    int right=0;
for (int n=0;n<numsSize;n++){
    for(int i=0;i<n;i++){
        left+=nums[i];
    }//初始版本，缺少对left和right的二次初始化，不知为何不行
    for(int i=n+1;i<numsSize;i++){
        right+=nums[i];
    }
    if(left==right)
    {return n;}
}
    return -1;
}
*/

/*官方题解，
空间复杂度O(1)
时间复杂度O(n)
下次自己按这个思路写一个
int pivotIndex(int* nums, int numsSize) {
    int total = 0;
    for (int i = 0; i < numsSize; ++i) {
        total += nums[i];
    }
    int sum = 0;
    for (int i = 0; i < numsSize; ++i) {
        if (2 * sum + nums[i] == total) {
            return i;
        }
        sum += nums[i];
    }
    return -1;
}


作者：LeetCode-Solution
链接：https://leetcode-cn.com/problems/find-pivot-index/solution/xun-zhao-shu-zu-de-zhong-xin-suo-yin-by-gzjle/
来源：力扣（LeetCode）
著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
*/
