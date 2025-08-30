void main (){
  String? nickname = null;

  nickname = 'Lex';

  // en caso de ser null:
  nickname ??= 'no nickname';

  print('Nickname is: $nickname');
}