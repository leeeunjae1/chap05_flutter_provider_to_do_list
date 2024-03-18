import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

// ToDOList 담당
class ToDoService extends ChangeNotifier {
  List<ToDo> toDoList = [
    // 더미데이터
    ToDo('공부하기', false),
  ];

  // todo 추가
  void createToDo(String job) {
    toDoList.add(ToDo(job, false));
    // 갱신 : Consumer로 등록된 곳의 builder 만 새로 갱신해서 화면을 그려줌.
    notifyListeners();
  }

  // todo 수정
  void updateToDo(ToDo toDo, int index) {
    toDoList[index] = toDo;
    notifyListeners();
  }

  // todo 삭제
  void deleteToDo(int index) {
    toDoList.removeAt(index);
    notifyListeners();
  }
}
