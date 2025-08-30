void main (){
  int score = 82;

  if(score > 89 && score <= 100) {
    print('Score: $score\nGrade: A');
  } else if(score > 79 && score <= 89) {
    print('Score: $score\nGrade: B');
  } else if(score > 69 && score <= 79) {
    print('Score: $score\nGrade: C');
  } else {
    print('Score: $score\nGrade: D');
  }
}