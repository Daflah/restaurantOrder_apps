import 'package:flutter/material.dart';
import 'package:restaurant_and_order/pages/menu_pages.dart';

void main() {
  runApp(Mylocation());
}

class CustomListItem {
  final String title;
  final String subtitle;
  final String imageUrl;
  final VoidCallback? onPressed; // Callback for the button

  CustomListItem({
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    this.onPressed,
  });
}

class Mylocation extends StatelessWidget {
  final List<CustomListItem> items = [
    CustomListItem(
      title: 'WWE 1',
      subtitle: 'PR74+GRC, Jl. Jimbaran, Kalideres, RT.4/RW.13, Cilandak Bar.,Kec. Kalideres, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 12430',
      imageUrl: 'images/L_iconWWE.jpg',
      onPressed: () {
        
        print('Button clicked for WWE 1');
      },
    ),
    CustomListItem(
      title: 'WWE 2',
      subtitle: 'Jl. Menteng Atas BARAT3 No.23, RT.11/RW.6, Kecamatan Setiabudi, Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12960',
      imageUrl: 'images/L_iconWWE.jpg',
      onPressed: () {
        
        print('Button clicked for WWE 2');
      },
    ),
    CustomListItem(
      title: 'WWE 3',
      subtitle: 'Rukan gold coats, Jl. Pantai Indah Kapuk No.12 - 15, RT.6/RW.2, Kamal Muara, Kec. Penjaringan, Daerah Khusus Ibukota Jakarta 14470',
      imageUrl: 'images/L_iconWWE.jpg',
      onPressed: () {
        
        print('Button clicked for WWE 3');
      },
    ),
    CustomListItem(
      title: 'WWE 4',
      subtitle: 'RT.1/RW.11, Cipinang Cempedak, Kecamatan Jatinegara, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13340',
      imageUrl: 'images/L_iconWWE.jpg',
      onPressed: () {
        
        print('Button clicked for WWE 4');
      },
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 86, 112, 126),
        appBar: AppBar(
          title: const Text(
            'Location WWE - Daerah DKI Jakarta',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color.fromARGB(255, 230, 75, 3),
        actions: [
          //buttonBack
        IconButton(
          icon: const Icon(
            Icons.logout,
            color: Colors.white,
            ),
          onPressed: () {
            // Logika untuk kembali ke layar sebelumnya
            Navigator.of(context).pop();
          },
        ),
      ],
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                const SizedBox(height: 15),
                CustomListItemWidget(item: items[index]),
                const SizedBox(height: 10), // Tambahkan SizedBox di sini untuk memberikan ruang
              ],
            );
          },
        ),
      ),
    );
  }
}

class CustomListItemWidget extends StatelessWidget {
  final CustomListItem item;

  CustomListItemWidget({required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: ListTile(
        contentPadding: EdgeInsets.all(15),
        leading: Container(
          width: 60.0,
          height: 60.0,
          child: Image.asset(
            item.imageUrl,
            fit: BoxFit.fill,
          ),
        ),
        title: Text(
          item.title,
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          item.subtitle,
          style: TextStyle(fontSize: 13.0),
        ),
        trailing: ElevatedButton(
          onPressed: item.onPressed, 
          style: ElevatedButton.styleFrom(
            primary: const Color.fromARGB(255, 230, 75, 3), 
          ),
          child: const Text(
            'Go To Maps >',
            style: TextStyle(color: Colors.white),
          
          ),
          
        ),
      ),
    );
  }
}
