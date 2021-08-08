int tribonacci(int n){
int tri;
if(n>=3){
    tri = tribonacci(n-1)+tribonacci(n-2)+tribonacci(n-3);
    }
    else{
        switch(n)
{
case 0:
return 0;
case 1:
return 1;
case 2:
return 1;
}}
return tri;
}
//函数似乎不能不在最外侧大括号内返回？
