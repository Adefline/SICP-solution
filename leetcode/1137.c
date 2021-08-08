int tribonacci(int n){
if(n == 0){
    return 0;
}
if(n < 3){
    return 1;
}
    int t1=0,t2=0,t3=1,t4=1;
    for(int i =3;i<=n;i=i+1){
        t1=t2;
        t2=t3;
        t3=t4;
        t4=t1+t2+t3;
    }
    return t4;
}
