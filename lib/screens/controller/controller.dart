import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class contactlistController extends GetxController {
  var conatctlist = [].obs;
  var favoritelist = [].obs;

  @override
  void onInit() {
    getcontactlist();
    get_favoritlist();
    super.onInit();
  }

  Future<void> getcontactlist() async {
    try {
      var url =
          'https://b1.bhaaraterp.com/leads/api/contact/?store_id=1&user_id=486&search_value=&short_by';
      var token = '6fba84eba684a66dfd52213a34327e14dfffb322';
      final response =
          await http.get(Uri.parse(url), headers: {'token': token});

      if (response.statusCode == 200) {
        print('${response.statusCode} ${response.body}');
        final data = jsonDecode(response.body);
        conatctlist.value = data['data'];
        update();
      }
    } catch (e) {
      print('$e');
    }
  }
  //Favorite Contact List

  Future<void> get_favoritlist() async {
    try {
      var url = 'https://b1.bhaaraterp.com/leads/api/fav-contact-list/';
      var token = '21c3d33f9130ab51e4d4a1c20746e161b70a4da6';
      final response =
          await http.get(Uri.parse(url), headers: {'token': token});

      if (response.statusCode == 200) {
        print('${response.statusCode} ${response.body}');
        final data = jsonDecode(response.body);
        favoritelist.value = data['data'];
        update();
      }
    } catch (e) {
      print('$e');
    }
  }
}
