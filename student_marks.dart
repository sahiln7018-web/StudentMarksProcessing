import 'dart:io';

void main() {
  print("STUDENT MARKS PROCESSING");

  stdout.write("Enter number of students: ");
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= n; i++) {
    print("\nStudent $i");

    int total = 0;

    for (int j = 1; j <= 5; j++) {
      stdout.write("Enter marks for subject $j: ");
      int marks = int.parse(stdin.readLineSync()!);
      total += marks;
    }

    double percentage = total / 5;
    String grade;

    if (percentage >= 90)
      grade = "A+";
    else if (percentage >= 80)
      grade = "A";
    else if (percentage >= 70)
      grade = "B";
    else if (percentage >= 60)
      grade = "C";
    else if (percentage >= 50)
      grade = "D";
    else
      grade = "F";

    print("Total Marks: $total / 500");
    print("Percentage: $percentage%");
    print("Grade: $grade");
  }
}