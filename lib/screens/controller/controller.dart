import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class contactlistController extends GetxController {
  var conatctlist = [].obs;
  var favoritelist = [].obs;
  var singlecantact = [].obs;

  @override
  void onInit() {
    getcontactlist();
    get_favoritlist();
    get_single();
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
      var url =
          'https://b1.bhaaraterp.com/leads/api/fav-contact-list/?store_id=1&user_id=486';
      var token = '6fba84eba684a66dfd52213a34327e14dfffb322';
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

  //Single Contact

  Future<void> get_single() async {
    try {
      var url =
          'https://b1.bhaaraterp.com/leads/api/get-contact-data/?store_id=1&contact_id=7';
      var token = '6fba84eba684a66dfd52213a34327e14dfffb322';
      final response =
          await http.get(Uri.parse(url), headers: {'token': token});

      if (response.statusCode == 200) {
        print('${response.statusCode} ${response.body}');
        final data = jsonDecode(response.body);
        singlecantact.value = data['data'];
        update();
      }
    } catch (e) {
      print('$e');
    }
  }
}
