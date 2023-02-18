import 'package:flutter/material.dart';

/* 
  Desarrollado por: 
        - Jared Jazer Romero Orellana - RO201303
        - Luis Fernando Lovo Juárez - LJ222345 
*/

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi tienda',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Mi tienda'),
        ),
        body: ListView(
          children: <Widget>[
            _buildListItem(
                context,
                'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/homepod-select-midnight-202210?wid=400&hei=400&fmt=jpeg&qlt=90&.v=1670557210097',
                'HomePod - Midnight',
                '299.00'),
            _buildListItem(
                context,
                'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MQD83?wid=400&hei=400&fmt=jpeg&qlt=90&.v=1660803972361',
                'AirPods Pro (2nd generation)',
                '249.00'),
            _buildListItem(
                context,
                'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/homepod-mini-select-yellow-202110?wid=400&hei=400&fmt=jpeg&qlt=90&.v=1632925510000',
                'HomePod mini - Yellow',
                '99.00'),
            _buildListItem(
                context,
                'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-card-40-iphone14pro-202209?wid=680&hei=528&fmt=p-jpg&qlt=95&.v=1663611329492',
                'iPhone 14 pro',
                '999.00'),
            _buildListItem(
                context,
                'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MK0C2?wid=532&hei=582&fmt=png-alpha&.v=1564075356758',
                'Apple Pencil (1st generation)',
                '99.00'),
            _buildListItem(
                context,
                'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MMMQ3?wid=532&hei=582&fmt=png-alpha&.v=1645138486301',
                'Magic Mouse',
                '99.00'),
            _buildListItem(
                context,
                'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MK0U3?wid=532&hei=582&fmt=png-alpha&.v=1646446502337',
                'Studio Display',
                '1599.00'),
          ],
        ),
      ),
    );
  }

  Widget _buildListItem(
      BuildContext context, String imageUrl, String title, String price) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: 120.0,
              height: 120.0,
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 36.0),
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    '\$$price',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
