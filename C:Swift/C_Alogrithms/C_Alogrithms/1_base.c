//
//  main.c
//  C_Alogrithms
//
//  Created by taeuk on 2021/02/01.
//

#include <stdio.h>

// 함수 사용
//int max3(int a, int b, int c)
//{
//    int max = a;
//    if (b > max) max = b;
//    if (c > max) max = c;
//    return max;
//}
//int main(void) {
//    // insert code here...
//    int a,b,c ;
//    int max;
//    printf("max3(%d, %d, %d) = %d\n", 3,2,2, max3(3, 2, 2));
//
//
//    return 0;
//}

// Q7
//int main(void){
//    int n = 7;
//    int count = 0;
//
//    for(int i = 0; i <= n; i++){
//        count += i;
//    }
//    printf("%d \n", count);
//
//    return 0;
//}

//Q9
int sumof(int a, int b){
    int count = 0;
    if (a<b){
        for(a,b; a<=b; a++){
            count += a;
        }
    }else{
        for(a,b; b<=a; b++){
            count += b;
            
        }

    }

    return count;
}
int main(void){
    printf("max3(%d, %d) = %d\n", 3,5, sumof(6, 4));
    return 0;
}

