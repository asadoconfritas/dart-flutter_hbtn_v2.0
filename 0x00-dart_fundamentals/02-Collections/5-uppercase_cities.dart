void main (){
  List<String> cities = ['london', 'madrid', 'rome'];

  print(cities.map((str) => str.toUpperCase()).toList());
}