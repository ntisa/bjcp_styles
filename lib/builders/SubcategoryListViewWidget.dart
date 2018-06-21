import 'package:beer_styles_bjcp/models/BeerSubcategory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildSubcategoryListViewWidget(
    BuildContext context, BeerSubcategory beerSubcategory) {
  return ListTile(
    title: Padding(
      padding: const EdgeInsets.only(left: 24.0),
      child: Text(
        beerSubcategory.name,
        style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 0.95),
      ),
    ),
    onTap: () {
      Navigator.of(context).push(AnimatedRoute(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: Text(beerSubcategory.name),
          ),
          body: Center(child: Text(beerSubcategory.name)),
        );
      }));
    },
  );
}

class AnimatedRoute<T> extends MaterialPageRoute<T> {
  AnimatedRoute({WidgetBuilder builder, RouteSettings settings})
      : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return FadeTransition(opacity: animation, child: child);
  }
}
