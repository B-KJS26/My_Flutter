import 'dart:math';

void main(){
  List<int> code = [];
  while (true) {
    var Roomcode = Random().nextInt(10);

    if (!code.contains(Roomcode)) {
  	// 리스트에 추가일지도...?
  	code.add(Roomcode);
  }
  if (code.length == 6) break;
  }
  code.sort();
        print('${code.toString()}');
    setState(() {});
}


void setState(Null Function() param0) {
}