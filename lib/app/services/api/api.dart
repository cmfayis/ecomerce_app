import 'dart:convert';

import 'package:mechinetext/app/model/productmodel.dart';
import 'package:http/http.dart' as http;


  Future<List<Product>> fetchProducts() async {
    final response =
        await http.get(Uri.parse('https://fakestoreapi.com/products'));

    if (response.statusCode == 200) {
     
      List jsonResponse = json.decode(response.body) as List;
      return jsonResponse.map((product) => Product.fromJson(product)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }
 

