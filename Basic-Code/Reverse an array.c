#include<stdio.h>
int main(){
int array1[20],array2[20],i,j,n;
printf("How many numbers: ");
scanf("%d",&n);
for(i=0;i<n;i++){
    scanf("%d",&array1[i]);
}
     printf("Array: ");
     for(i=0;i<n;i++){
    printf("%d ",array1[i]);}


printf("\nReverse Array: ");
//for(i=0;i<n;i++){

for(j=0,i=n-1; i>=0;i--,j++)
{
array2[j]=array1[i];
printf("%d ",array2[j]);
}
}









