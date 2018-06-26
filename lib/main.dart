import 'dart:async';
import 'dart:convert';

import 'package:beer_styles_bjcp/builders/CategoryListWidget.dart';
import 'package:beer_styles_bjcp/models/BeerCategory.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

void main() => runApp(BJCPBeerStylesApp());

class BJCPBeerStylesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Load the BJCP Beer Data
    var futureBuilder = FutureBuilder(
      future: _loadBeerData(),
      builder: (context, snapshot) {
        if (snapshot.hasError) print(snapshot);
        return snapshot.hasData
            ? buildBeerCategoryListViewWidget(context, snapshot)
            : Center(child: CircularProgressIndicator());
      },
    );

    return MaterialApp(
      title: 'BJCP Beer Styles',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Beer Styles'),
        ),
        body: Center(
          child: futureBuilder,
        ),
      ),
    );
  }

  Future<List<BeerCategory>> _loadBeerData() async {
    final String stringJSON =
        await rootBundle.loadString('assets/data/beer_data.json');
    return compute(parseBeerData, stringJSON);
  }

  static List<BeerCategory> parseBeerData(String responseBody) {
    return json
        .decode(responseBody)
        .cast<Map<String, dynamic>>()
        .map<BeerCategory>((json) => BeerCategory.fromJson(json))
        .toList();
  }
}
