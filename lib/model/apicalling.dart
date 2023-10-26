import 'dart:convert';
import 'package:e_commerce/model/model.dart';
import 'package:http/http.dart' as http;

 List<ProductApi> productApi = [];

 Future<List<ProductApi>> getData() async {
    final response =
        await http.get(Uri.parse('https://fakestoreapi.com/products'));
    var data = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      for (Map<String, dynamic> index in data) {
        productApi.add(ProductApi.fromJson(index));
      }
      return productApi;
    } else {
      return productApi;
    }
  }
