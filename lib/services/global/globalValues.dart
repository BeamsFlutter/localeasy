

import 'dart:convert';

import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Global {

  static final Global _instance = Global._internal();

  // passes the instantiation to the _instance object
  factory Global() => _instance;

  //initialize variables in here
  Global._internal() {
    _wstrToken = '';
    _wstrCompany = '';
    _wstrYearcode = '';
    _wstrUserCd = '';
    _wstrUserName = '';
    _wstrCurrency= 'AED';
    _wstrCurrencyRate = 1;
    _wstrDeivceId = '';
    _wstrDeviceName = '';
    _wstrIp = '';
    _wstrVersionName = '';
    _wstrBrnCode = '';
    _wstrLoginDate = "";
    _wstrLoginYn = "";
    _wstrBaseUrl = "";
    _wstrHeadFont = 15.0;
    _wstrSubFont = 12.0;
    _wstrIconSize = 18.0;
    _wstrSubIconSize = 15.0;
    _wstrCompanyName = '';
    _wstrUserRole = '';
    _wstrUserRoleDescp = '';
    _wstrEmpCode = '';
    _wstrDailyHour = 00;
    _wstrJobValidate = "N";
    _wstrAppID = "ESS";
    _wstrMainCompany = "";
  }
  var _wstrToken  = '';
  var _wstrCompany = '';
  var _wstrCompanyName = '';
  var _wstrBrnCode = '';
  var _wstrDeivceId = '';
  var _wstrDeviceName = '';
  var _wstrYearcode = '';

  var _wstrUserCd = '';
  var _wstrUserName = '';
  var _wstrUserRole = '';
  var _wstrUserRoleDescp = '';
  var _wstrEmpCode = "";


  var _wstrCurrency= 'AED';
  var _wstrCurrencyRate = 1;
  var _wstrIp = '';
  var _wstrDeliveryMode  ='';
  var _wstrDeviceIP;
  var _wstrContext;
  var _wstrVersionName = '';

  var _wstrLoginDate = "";
  var _wstrLoginYn = "";
  var _wstrBaseUrl = "";


  //App Setup
  var _wstrMainCompany = "";
  var _wstrAppID = "ESS";
  var _wstrDailyHour = 00;
  var _wstrJobValidate = "N";


  //FONT_SIZE
  var _wstrHeadFont = 15.0;
  var _wstrSubFont = 12.0;
  var _wstrIconSize = 18.0;
  var _wstrSubIconSize = 13.0;

  get wstrMainCompany => _wstrMainCompany;

  set wstrMainCompany(value) {
    _wstrMainCompany = value;
  }

  get wstrAppID => _wstrAppID;

  set wstrAppID(value) {
    _wstrAppID = value;
  }

  get wstrDailyHour => _wstrDailyHour;

  set wstrDailyHour(value) {
    _wstrDailyHour = value;
  }

  get wstrEmpCode => _wstrEmpCode;

  set wstrEmpCode(value) {
    _wstrEmpCode = value;
  }

  get wstrUserRole => _wstrUserRole;

  set wstrUserRole(value) {
    _wstrUserRole = value;
  }

  get wstrCompanyName => _wstrCompanyName;

  set wstrCompanyName(value) {
    _wstrCompanyName = value;
  }

  get wstrSubIconSize => _wstrSubIconSize;

  set wstrSubIconSize(value) {
    _wstrSubIconSize = value;
  }

  get wstrHeadFont => _wstrHeadFont;

  set wstrHeadFont(value) {
    _wstrHeadFont = value;
  }

  get wstrBaseUrl => _wstrBaseUrl;

  set wstrBaseUrl(value) {
    _wstrBaseUrl = value;
  }

  get wstrLoginDate => _wstrLoginDate;

  set wstrLoginDate(value) {
    _wstrLoginDate = value;
  }

  get wstrBrnCode => _wstrBrnCode;

  set wstrBrnCode(value) {
    _wstrBrnCode = value;
  }

  get wstrVersionName => _wstrVersionName;

  set wstrVersionName(value) {
    _wstrVersionName = value;
  }

  get wstrDeliveryMode => _wstrDeliveryMode;

  set wstrDeliveryMode(value) {
    _wstrDeliveryMode = value;
  }
  get wstrDeviceIP => _wstrDeviceIP;

  set wstrDeviceIP(value) {
    _wstrDeviceIP = value;
  }

  get wstrIp => _wstrIp;

  set wstrIp(value) {
    _wstrIp = value;
  }

  get wstrToken => _wstrToken;

  set wstrToken(value) {
    _wstrToken = value;
  }

  get wstrDeivceId => _wstrDeivceId;

  set wstrDeivceId(value) {
    _wstrDeivceId = value;
  }

  get wstrDeviceName => _wstrDeviceName;


  set wstrDeviceName(value) {
    _wstrDeviceName = value;
  }

  get wstrCurrency => _wstrCurrency;

  set wstrCurrency(value) {
    _wstrCurrency = value;
  }

  set wstrUserName(value) {
    _wstrUserName = value;
  }

  set wstrUserCd(value) {
    _wstrUserCd = value;
  }

  set wstrYearcode(value) {
    _wstrYearcode = value;
  }

  set wstrCompany(value) {
    _wstrCompany = value;
  }

  get wstrCompany => _wstrCompany;

  get wstrYearcode => _wstrYearcode;

  get wstrUserCd => _wstrUserCd;

  get wstrUserName => _wstrUserName;

  get wstrCurrencyRate => _wstrCurrencyRate;

  set wstrCurrencyRate(value) {
    _wstrCurrencyRate = value;
  }

  get wstrContext => _wstrContext;

  set wstrContext(value) {
    _wstrContext = value;
  }

  get wstrLoginYn => _wstrLoginYn;

  set wstrLoginYn(value) {
    _wstrLoginYn = value;
  }

  get wstrSubFont => _wstrSubFont;

  set wstrSubFont(value) {
    _wstrSubFont = value;
  }

  get wstrIconSize => _wstrIconSize;

  set wstrIconSize(value) {
    _wstrIconSize = value;
  }


  //===============================================================global fn========================

  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  bool fnValCheck(value){
    if(value == null){
      return false;
    }else{
      if(value.length > 0){
        return true;
      }else{
        return false;
      }
    }
  }
  fnGrep(array,code,value){
    if(array == null){

    }else{
      if(array.length > 0){

      }else{
      }
    }
  }
  mfnDbl(dbl){
    var lstrDbl = 0.0;

    try {
      lstrDbl =  double.parse((dbl??'0.0').toString());
    }
    catch(e){
      lstrDbl= 0.00;
    }
    return lstrDbl;
  }
  mfnInt(dbl){
    var lstrInt = 0;
    try {
      lstrInt =  int.parse((dbl??'0.0').toString());
    }
    catch(e){
      lstrInt= 0;
    }
    return lstrInt;
  }
  mfnJson(arr){
    var tempArray;
    if(fnValCheck(arr)){
      String tempString = jsonEncode(arr);
      tempArray  =  jsonDecode(tempString);
    }
    return tempArray;
  }
  mfnCurr(amount){
    var lstrDbl = 0.0;

    try {
      lstrDbl =  double.parse((amount??'0.0').toString());
    }
    catch(e){
      lstrDbl= 0.00;
    }
    var amt = NumberFormat.simpleCurrency(name:"").format(lstrDbl);
    return amt;

  }

  get wstrUserRoleDescp => _wstrUserRoleDescp;

  set wstrUserRoleDescp(value) {
    _wstrUserRoleDescp = value;
  }

  get wstrJobValidate => _wstrJobValidate;

  set wstrJobValidate(value) {
    _wstrJobValidate = value;
  }
}