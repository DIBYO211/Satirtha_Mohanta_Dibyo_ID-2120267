import 'dart:math';

void main() {
  // 1. Create student names list
  List<String> studentNames = ["Alice", "Bob", "Charlie", "Diana", "Eve"];

  // 2. Create scores map
  Map<String, int> studentScores = {};

  // 3. Assign random scores (60-100)
  Random random = Random();

  for (String student in studentNames) {
    int score = 60 + random.nextInt(41); // 60 to 100
    studentScores[student] = score;
  }

  // 4. Find highest, lowest, average
  String highestStudent = "";
  int highestScore = 0;
  String lowestStudent = "";
  int lowestScore = 100;
  double averageScore = 0.0;

  int total = 0;

  for (String student in studentNames) {
    int score = studentScores[student]!;

    // highest
    if (score > highestScore) {
      highestScore = score;
      highestStudent = student;
    }

    // lowest
    if (score < lowestScore) {
      lowestScore = score;
      lowestStudent = student;
    }

    total += score;
  }

  // average
  averageScore = total / studentNames.length;

  print("Student Scores: $studentScores");
  print("Highest Score: $highestStudent with $highestScore");
  print("Lowest Score: $lowestStudent with $lowestScore");
  print("Average Score: $averageScore");

  // 5. Categorize using switch
  for (String student in studentNames) {
    int score = studentScores[student]!;
    String category = "";

    switch (score ~/ 10) { // divide by 10
      case 10:
      case 9:
        category = "Excellent";
        break;
      case 8:
        category = "Good";
        break;
      case 7:
        category = "Average";
        break;
      default:
        category = "Needs Improvement";
    }

    print("$student: $score ($category)");
  }
}