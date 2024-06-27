#include<stdio.h>
#include<stdlib.h>
#include<string.h>
struct Student
{
 char name[50];
 int prn;
 float cgpa;
};
void insert();
void search();
void display();
void update();
void save();
void del();
struct Student students[100];
int numStudents=0;
void insert()
{
 if(numStudents>=100)
 {
 printf("maximum number of students reached \n");
 return;
 }
 struct Student newStudent;
 printf("Enter Student Name :");
 scanf("%s",newStudent.name);
 printf("Enter PRN :");
 scanf("%d",&newStudent.prn);
 printf("Enter CGPA:");
 scanf("%f",&newStudent.cgpa);
 students[numStudents]=newStudent;
 numStudents++;
 printf("Student inserted successfully\n");
 save();
}
void search()
{
 if(numStudents==0)
 {
 printf("No Students found\n");
 return;
 }
 int prn;
 printf("enter PRN of a student which you want to search:");
 scanf("%d",&prn);
 int found=0;
 for(int i=0;i<numStudents;i++)
 {
 if(students[i].prn==prn)
 {
 printf("Student found:\n");
 printf("Name: %s\n",students[i].name);
 printf("PRN: %d\n",students[i].prn);
 printf("CGPA:%f\n",students[i].cgpa);
 found=1;
 break;
 }
 }
 if(!found)
 {
 printf("Student not found\n");
 }
}
void display()
{
 if (numStudents == 0)
 {
 printf("No students found.\n");
 return;
 }
 printf("Student Database:\n");
 printf("------------------------------\n");
 for (int i = 0; i < numStudents; i++)
 {
 printf("Name: %s\n\n",students[i].name);
 printf("PRN: %d\n\n",students[i].prn);
 printf("CGPA:%f\n\n",students[i].cgpa);
 }
 printf("------------------------------\n");
}
void update()
{
 if(numStudents==0)
 {
 printf("no students found\n");
 return;
 }
 int prn;
 printf("enter PRN of the student which you want to update:");
 scanf("%d",&prn);
 int found=0;
 for(int i=0;i<numStudents;i++)
 {
 if(students[i].prn==prn)
 {
 printf("enter new student name:");
 scanf("%s",students[i].name);
 printf("Enter new PRN:");
 scanf("%d",&students[i].prn);
 printf("Enter new CGPA:");
 scanf("%f",&students[i].cgpa);
 found = 1;
 printf("Student updated successfully.\n");
 break;
 }
 }
 if(!found)
 {
 printf("Student not found.\n");
 }
 else{
 save();
 }
}
void del()
{
    if(numStudents==0)
    {
 printf("No students found \n");
 return;
    }

    int prn;
    printf("Enter roll number of students which you have to delete: ");
    scanf("%d",&prn);

    int found=0;
    for(int i=0;i<numStudents;i++)
    {
 if(students[i].prn==prn)
 {
     students[i]=students[numStudents-1];
     numStudents--;
     found=1;
     break;
 }
    }

    if(found)
    {
 printf("Student deleted successfully\n");
 save();
    }

    else
    {
 printf("Student not found\n");
    }
}
void save()
{
 FILE* file=fopen("karan.txt","w");
 if(file==NULL)
 {
 printf("error in opening file for writing");
 return;
 }
 for(int i=0;i<numStudents;i++)
 {
 fprintf(file, "Student %d:\n", i+1);
 fprintf(file, "Name: %s\n", students[i].name);
 fprintf(file, "PRN: %d\n", students[i].prn);
 fprintf(file, "CGPA: %f\n\n", students[i].cgpa);
 }
 fclose(file);
}
int main()
{
 int choice;
 while(1)
 {
 printf("\n ------Student Database-------\n");
 printf("1-Insert, 2-Display, 3-Search, 4-Update, 5-Delete,6-Exit\n");
 printf("enter choice:");
 scanf("%d",&choice);
 switch (choice)
 {
 case 1:
 {
 insert();
 break;
 }
 case 2:
 {
 display();
 break;
 }
 case 3:
 {
 search();
 break;
 }
 case 4:
 {
 update();
 break;
 }
 case 5:
 {
 del();
 break;
 }
case 6:
{
exit(1);
break;
}
 default:
 {
 printf("invalid choice");
 }
 }
 }
 return 0;
}
