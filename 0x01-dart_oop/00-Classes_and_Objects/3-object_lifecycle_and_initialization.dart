class Timer {
  int seconds;

  Timer({required this.seconds});

  start (){
    print('Timer started for $seconds seconds.');
  }
}

void main (){
  Timer t = Timer(seconds: 10);
  t.start();
}