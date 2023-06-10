import 'package:get/get.dart';
import 'package:my_flutter_getx_ripple_code_project/student.dart';

class MyController extends GetxController{
  var student = Student();
  void convertToUppercase(){
    student.name.value = student.name.value.toUpperCase();
  }



  //var student = Student(name: "Tom", age: 25).obs;
  
  /*
  void convertUpperCase(){
    student.update((student){
      student.name = student.name.toString().toUpperCase();
    });
  }
  */




}