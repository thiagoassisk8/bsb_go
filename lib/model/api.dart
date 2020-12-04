import 'package:http/http.dart' as http;
import 'dart:async';

const idUserDefault = "Zjlq1nMf9XS2SrHc6b0gFHFuBTa2";

// URLs
const getUserRanking = "https://us-central1-bsbgo-f60da.cloudfunctions.net/getUserRanking";
const getAllCircuits = "https://us-central1-bsbgo-f60da.cloudfunctions.net/getAllCircuits";
const getForUser = "https://us-central1-bsbgo-f60da.cloudfunctions.net/getGeopointsForUser";

class API {

  static Future getUsers() async {
    return await http.get(getUserRanking);
  }

  static Future getCircuits() async {
    return await http.get(getAllCircuits);
  }

  static Future getPointsUser(dynamic body) async {
    return await http.post(getForUser, body: body);
  }

}