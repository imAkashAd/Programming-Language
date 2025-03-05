#include<stdio.h>
int main(){
    int marks;
    printf("Enter student's marks: ");
    scanf("%d", &marks);
    if (marks >= 80)
    {
        printf("you've got A+");
    }
    else if (marks >= 70){
        printf("you've got A");
    }
    else if (marks >= 60){
        printf("you've got A-");
    }
    else if (marks >= 50){
        printf("you've got B");
    }
    else if (marks >= 40){
        printf("you've got C");
    }
    else {
        printf("you've failed in exam.");
    }
    
}