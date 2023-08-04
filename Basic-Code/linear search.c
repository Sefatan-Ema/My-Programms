#include<stdio.h>
int main(){
int num[]={10,34,11,12,14};
int i,value,position=-1;
for(i=0;i<5;i++){

printf("%d,",num[i]);
}
printf("\nEnter the value you want to search:");
scanf("%d",&value);

for(i=0;i<6;i++){
  if(value==num[i]){
    position=i+1;
    break;}
}
if(position==-1){
    printf("not found");
}
else
    printf("\nThe position is=%d",position);
}
