
import 'dart:math';

import 'package:get/get.dart';

class HomeScreenController extends GetxController{
 RxInt ballValue=1.obs;
 ballValueChange(){
  Random random = Random();
  ballValue.value=random.nextInt(5)+1;
  print(random);
  print(ballValue);
  return ballValue;
 }
}