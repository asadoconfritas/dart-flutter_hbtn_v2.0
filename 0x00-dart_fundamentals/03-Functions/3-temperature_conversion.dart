toCelsius (double fahrenheit){
  return((fahrenheit - 32) * 5 / 9);
}
void main (){
  print('Celsius: ${toCelsius(98.6)}');
}