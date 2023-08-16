

import 'dart:convert';
import 'package:localeasy/services/services/appExceptions.dart';
import 'package:localeasy/services/services/baseController.dart';
import 'package:localeasy/views/components/common/common.dart';

import 'apiManager.dart';

class ApiCall  extends  BaseController{


  //============================================GLOBAL CHECK
  Future<dynamic> gapiCheckRegister(deviceId) async{

    var request = jsonEncode(<dynamic, dynamic>{
      'DEVICE_ID':deviceId,
      'APP_ID':"ESSDEMO",
    });
    dprint('api/check_device_reg');
    dprint(request);
    var response = await ApiManager().postGlobal('api/check_device_reg',request).catchError((error){
      if (error is BadRequestException) {
      } else {
        handleError(error);
      }
    });
    dprint(response);
    if (response == null) return;

    return response;

  }
  Future<dynamic> gapiDeviceRegister(deviceId,appid,deviceName,mainCompany) async{

    var request = jsonEncode(<dynamic, dynamic>{
      'DEVICE_ID':deviceId,
      'APP_ID':appid,
      'MAIN_COMPANY':mainCompany,
      'DEVICE_NAME':deviceName,
    });
    dprint('api/device_reg');
    dprint(request);
    var response = await ApiManager().postGlobal('api/device_reg',request).catchError((error){
      if (error is BadRequestException) {
      } else {
        handleError(error);
      }
    });
    dprint(response);
    if (response == null) return;

    return response;

  }


  //============================================LOGIN
  Future<dynamic> apiLogin(usercd,password) async{

    var request = jsonEncode(<dynamic, dynamic>{
      'USER_NAME':usercd,
      'USER_PWD':password,
      'DEVICE_ID':password,
    });
    dprint('api/userlogin');
    dprint(request);
    var response = await ApiManager().post('api/userlogin',request).catchError((error){
      if (error is BadRequestException) {
      } else {
        handleError(error);
      }
    });
    dprint(response);
    if (response == null) return;

    return response;

  }
  Future<dynamic> apiGetCompany() async{

    var response = await ApiManager().postLink('api/GetCompanyYear').catchError((error){
      if (error is BadRequestException) {
      } else {
        handleError(error);
      }
    });
    dprint('api/GetCompanyYear');
    dprint(response);

    if (response == null) return;

    return response;

  }

  //============================================LOOKUP
  Future<dynamic> LookupSearch(lstrTable,lstrColumn,lstrPage,lstrPageSize,lstrFilter) async {

    var request = jsonEncode(<dynamic, dynamic>{
      "lstrTable" : lstrTable,
      "lstrSearchColumn" :lstrColumn,
      "lstrPage" : lstrPage,
      "lstrLimit": lstrPageSize,
      "lstrFilter" : lstrFilter,
    });
    dprint('api/lookupSearch');
    dprint(request);

    var response = await ApiManager().post('api/lookupSearch',request).catchError((error){
      if (error is BadRequestException) {
        var apiError = json.decode(error.message!);
        //Fluttertoast.showToast(msg: apiError["reason"].toString());
      } else {
        handleError(error);
      }
    });
    if (response == null) return;
    dprint(response);
    return response;

  }
  Future<dynamic> LookupValidate(lstrTable,lstrFilter) async {

    var request = jsonEncode(<dynamic, dynamic>{
      "lstrTable" : lstrTable,
      "lstrFilter" : lstrFilter
    });
    dprint('api/lookupValidate');
    dprint(request);
    var response = await ApiManager().post('api/lookupValidate',request).catchError((error){
      if (error is BadRequestException) {
        var apiError = json.decode(error.message!);
        //Fluttertoast.showToast(msg: apiError["reason"].toString());
      } else {
        handleError(error);
      }
    });
    if (response == null) return;
    dprint(response);
    return response;

  }
  Future<dynamic> apiLookupValidate(lstrTable,key,value) async {
    var lstrFilter =[{'Column': key, 'Operator': '=', 'Value': value, 'JoinType': 'AND'}];
    var request = jsonEncode(<dynamic, dynamic>{
      "lstrTable" : lstrTable,
      "lstrFilter" : lstrFilter
    });
    dprint('api/lookupValidate');
    dprint(request);
    var response = await ApiManager().post('api/lookupValidate',request).catchError((error){
      if (error is BadRequestException) {
        // var apiError = json.decode(error.message!);
        //Fluttertoast.showToast(msg: apiError["reason"].toString());
      } else {
        handleError(error);
      }
    });
    if (response == null) return;
    return response;

  }

  //CALL BASED ON COMPANY
  Future<dynamic> apiLookupValidateSch(lstrTable,key,value,company) async {
    var lstrFilter =[{'Column': key, 'Operator': '=', 'Value': value, 'JoinType': 'AND'}];
    var request = jsonEncode(<dynamic, dynamic>{
      "lstrTable" : lstrTable,
      "lstrFilter" : lstrFilter,
      "COMPANY" : company
    });
    var response = await ApiManager().post('api/lookupValidate_sch',request).catchError((error){
      if (error is BadRequestException) {
        // var apiError = json.decode(error.message!);
        //Fluttertoast.showToast(msg: apiError["reason"].toString());
      } else {
        handleError(error);
      }
    });
    if (response == null) return;
    return response;

  }
  Future<dynamic> apiLookupSearch(lstrTable,lstrColumn,lstrPage,lstrPageSize,lstrFilter,company) async {

    var request = jsonEncode(<dynamic, dynamic>{
      "lstrTable" : lstrTable,
      "lstrSearchColumn" :lstrColumn,
      "lstrPage" : lstrPage,
      "lstrLimit": lstrPageSize,
      "lstrFilter" : lstrFilter,
      "COMPANY" : company,
    });
    dprint('api/lookupSearch_sch');
    dprint(request);

    var response = await ApiManager().post('api/lookupSearch_sch',request).catchError((error){
      if (error is BadRequestException) {
        var apiError = json.decode(error.message!);
        //Fluttertoast.showToast(msg: apiError["reason"].toString());
      } else {
        handleError(error);
      }
    });
    if (response == null) return;
    dprint(response);
    return response;

  }
  Future<dynamic> LookupValidateSch(lstrTable,lstrFilter,company) async {

    var request = jsonEncode(<dynamic, dynamic>{
      "lstrTable" : lstrTable,
      "lstrFilter" : lstrFilter,
      "COMPANY" : company
    });

    var response = await ApiManager().post('api/lookupValidate_sch',request).catchError((error){
      if (error is BadRequestException) {
        //var apiError = json.decode(error.message!);
        //Fluttertoast.showToast(msg: apiError["reason"].toString());
      } else {
        handleError(error);
      }
    });
    if (response == null) return;
    return response;

  }



}