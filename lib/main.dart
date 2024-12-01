import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '211569',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: ProductGridScreen(),
    );
  }
}

class ProductGridScreen extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {
      'name': 'Маица Scarface',
      'image': 'https://static.pullandbear.net/assets/public/1b74/3a77/9d614365884b/ae3ab8c24309/03245526800-A7M/03245526800-A7M.jpg?ts=1732011586070&w=1124&f=auto',
      'price': '999 MKD',
      'description': 'НАДВОРЕШЕН ДЕЛ 100% ПАМУК Која Содржи Барем Надворешен Дел 75% Ocs Сертифициран Памук Од Органско Потекло, 25% Rcs Сертифициран Рециклиран Памук.',
    },
    {
      'name': 'Metallica маица',
      'image': 'https://static.pullandbear.net/assets/public/a051/0bf8/1373447091e2/cff3efeabfb9/03245523250-A7M/03245523250-A7M.jpg?ts=1732011544307&w=1124&f=auto',
      'price': '1.190 MKD',
      'description': 'Состав НАДВОРЕШЕН ДЕЛ 100% ПАМУК Нега Би сакале да ви се придружиме и да ви помогнеме да го продолжите корисниот век на вашата облека, а истовремено да го намалите влијанието врз животната средина од процесот на перење. Машинско перење до 30ºC/86ºF програма за нежно перење Машинско перење до 30ºC/86ºF програма за нежно перење Да не се избелува Да не се избелува Да се пегла до 110ºC/230ºF Да се пегла до 110ºC/230ºF Да не се користи хемиско чистење Да не се користи хемиско чистење Да не се суши во машина за сушење алишта Да не се суши во машина за сушење алишта',
    },
    {
      'name': 'Црна 21 Savage маица',
      'image': 'https://static.pullandbear.net/assets/public/6139/e797/5b044de9a2a7/9fd5c6b0a90f/03245525800-A2M/03245525800-A2M.jpg?ts=1732529983723&w=1124&f=auto',
      'price': '1.190 MKD',
      'description': 'Состав НАДВОРЕШЕН ДЕЛ 100% ПАМУК Нега Би сакале да ви се придружиме и да ви помогнеме да го продолжите корисниот век на вашата облека, а истовремено да го намалите влијанието врз животната средина од процесот на перење. Машинско перење до 30ºC/86ºF програма за нежно перење Машинско перење до 30ºC/86ºF програма за нежно перење Да не се избелува Да не се избелува Да се пегла до 110ºC/230ºF Да се пегла до 110ºC/230ºF Да не се користи хемиско чистење Да не се користи хемиско чистење Да не се суши во машина за сушење алишта Да не се суши во машина за сушење алишта',
    },
    {
      'name': 'The Godfather дуксер со качулка',
      'image': 'https://static.pullandbear.net/assets/public/2ed4/3ceb/89fc4025b622/75e7aa418903/03594526800-A7M/03594526800-A7M.jpg?ts=1732012833754&w=1124&f=auto',
      'price': '1.990 MKD',
      'description': 'Состав НАДВОРЕШЕН ДЕЛ ГЛАВЕН: 65% ПАМУК / 35% ПОЛИЕСТЕР ДЕТАЛИ: 97% ПАМУК / 3% ЕЛАСТАН ПОСТАВА 65% ПАМУК / 35% ПОЛИЕСТЕР Која Содржи Барем Надворешен Дел Main Fabric: 30% Rcs Сертифициран Рециклиран Памук, 35% Rcs Сертифициран Рециклиран Полиестер. 97% Ocs Сертифициран Памук Од Органско Потекло. Постава 25% Ocs Сертифициран Памук Од Органско Потекло.',
    },
    {
      'name': 'Фармерки со вреќест крој',
      'image': 'https://static.pullandbear.net/assets/public/cf71/1ab5/3d5d4273ad3f/0cb0f271aa4f/08686518922-A4M/08686518922-A4M.jpg?ts=1726228352982&w=1124&f=auto',
      'price': '1.990 MKD',
      'description': 'Состав НАДВОРЕШЕН ДЕЛ 100% ПАМУК Која Содржи Барем Надворешен Дел 20% Rcs Сертифициран Рециклиран Памук.',
    },
    {
      'name': 'Полнета јакна со качулка STWD',
      'image': 'https://static.pullandbear.net/assets/public/6cfb/2385/801e460f92a8/880df92608b8/07711521800-A6M/07711521800-A6M.jpg?ts=1729603408643&w=1124&f=auto',
      'price': '2.690 MKD',
      'description': 'Состав НАДВОРЕШЕН ДЕЛ 100% ПОЛИЕСТЕР ПОСТАВА 100% ПОЛИЕСТЕР МАТЕРИЈАЛ ЗА ПОЛНЕЊЕ 100% ПОЛИЕСТЕР Која Содржи Барем Надворешен Дел 100% Rcs Сертифициран Рециклиран Полиестер.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('211569')),
      body: SingleChildScrollView(  
        child: GridView.builder(
          shrinkWrap: true,  
          physics: NeverScrollableScrollPhysics(), 
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailScreen(product: products[index]),
                ),
              ),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Flexible(
                      flex: 3, 
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(
                          products[index]['image'],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        products[index]['name'],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        products[index]['price'],
                        style: TextStyle(color: Colors.teal),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class ProductDetailScreen extends StatelessWidget {
  final Map<String, dynamic> product;
  ProductDetailScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product['name'])),
      body: SingleChildScrollView(  
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(product['image']),
              ),
              SizedBox(height: 16),
              Text(product['name'], style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Text(product['price'], style: TextStyle(fontSize: 20, color: Colors.teal)),
              SizedBox(height: 16),
              Text(
                product['description'],
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}