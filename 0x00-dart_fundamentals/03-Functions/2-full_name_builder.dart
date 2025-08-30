getFullName (String first, String last){
  return('$first $last');
}
void main (){
  print('Full name: ${getFullName('Ada', 'Lovelace')}');
}