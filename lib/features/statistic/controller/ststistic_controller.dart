import 'package:get/get.dart';

class StstisticController extends GetxController {
  final months = ['Jan', 'Feb', 'Mar', 'Apr', 'Jun', 'Jul'];

  final incomeData = <double>[20000, 20000, 26000, 20000, 24000, 21000].obs;
  final expenseData = <double>[9000, 16000, 22000, 7000, 4000, 16000].obs;
  double get totalIncome => incomeData.fold(0, (sum, e) => sum + e);
  double get totalExpense => expenseData.fold(0, (sum, e) => sum + e);
}
