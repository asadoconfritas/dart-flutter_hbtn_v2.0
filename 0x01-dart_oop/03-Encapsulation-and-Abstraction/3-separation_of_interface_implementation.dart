void main (){
  User user = User();
  print(user.getName());
  user.setName('Alice');
  print(user.getName());
}

class User {
  Map<String, dynamic> _data = {};

  void setName(String name){
    _data['name'] = name;
  }

  String getName() {
    if(_data['name'] == null) {
      return 'Name not set';
    } else {
    return _data['name'];
    }
  }
}