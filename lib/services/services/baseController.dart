


import 'package:get/get.dart';
import 'package:localeasy/services/services/appExceptions.dart';
import 'package:localeasy/views/components/common/common.dart';

class BaseController {
  void  handleError(error) {
    if (error is BadRequestException) {
      var message = error.message;
      dprint(message);
      Get.off(() =>  Error());

    } else if (error is FetchDataException) {
      var message = error.message;
      //Fluttertoast.showToast(msg: message.toString());
      //showToast(message.toString());
      dprint(message);
    } else if (error is ApiNotRespondingException) {
      var message = error.message;
      //Fluttertoast.showToast(msg: message.toString());
      //showToast(message.toString());
      dprint(message);
      Get.off(() =>  Error());
    }
  }
}