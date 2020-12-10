import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Profile(),
          Divider(),
          MainMenu(),
          SubMenu(),
          Banner()
        ],
      ),
    );
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: Container(
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage('https://source.unsplash.com/ZHvM3XIOHoE/')
            )
          ),
        ),
        title: Text(
          "Luthfi Azhari",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Row(
          children: [
            RaisedButton.icon(
              onPressed: (){},
              icon: Icon(Icons.album),
              label: Text("0 Poin"),
              color: Colors.grey[200],
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0)
              ),
            ),
            Padding(
              padding: EdgeInsets.all(4.0)
            ),
            RaisedButton(
              onPressed: (){},
              child: Text('TravelokaPay'),
              color: Colors.grey[200],
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 5,
      shrinkWrap: true,
      children: mainMenuItems,
    );
  }
}

List<MainMenuItem> mainMenuItems = [
  MainMenuItem(
    title: "Tiket Pesawat",
    icon: Icons.flight,
    colorBox: Colors.blue,
    colorIcon: Colors.white,
  ),
  MainMenuItem(
    title: "Hotel",
    icon: Icons.hotel,
    colorBox: Colors.blue[900],
    colorIcon: Colors.white,
  ),
  MainMenuItem(
    title: "Pesawat + Hotel",
    icon: Icons.flight_land,
    colorBox: Colors.purple,
    colorIcon: Colors.white,
  ),
  MainMenuItem(
    title: "Aktifitas & Rekreasi",
    icon: Icons.local_play,
    colorBox: Colors.green[300],
    colorIcon: Colors.white,
  ),
  MainMenuItem(
    title: "Kuliner",
    icon: Icons.local_dining,
    colorBox: Colors.orange,
    colorIcon: Colors.white,
  ),
  MainMenuItem(
    title: "Tiket Kereta Api",
    icon: Icons.train,
    colorBox: Colors.orange[300],
    colorIcon: Colors.white,
  ),
  MainMenuItem(
    title: "Tiket Bus & Travel",
    icon: Icons.directions_bus,
    colorBox: Colors.green,
    colorIcon: Colors.white,
  ),
  MainMenuItem(
    title: "Transportasi Bandara",
    icon: Icons.local_taxi,
    colorBox: Colors.blue[300],
    colorIcon: Colors.white,
  ),
  MainMenuItem(
    title: "Rental Mobil",
    icon: Icons.directions_car,
    colorBox: Colors.green[900],
    colorIcon: Colors.white,
  ),
  MainMenuItem(
    title: "Semua Produk",
    icon: Icons.blur_on,
    colorBox: Colors.grey,
    colorIcon: Colors.black,
  )
];

class MainMenuItem extends StatelessWidget {

  const MainMenuItem({Key key, this.title, this.icon, this.colorBox, this.colorIcon}) : super(key: key);

  final String title;
  final IconData icon;
  final Color colorBox, colorIcon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        
      },
      child: Column(
        children: [
          Container(
            width: 44.0,
            height: 44.0,
            decoration: BoxDecoration(
              color: colorBox,
              shape: BoxShape.circle
            ),
            child: Icon(
              icon, color: colorIcon,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 12.0
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

class SubMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: subMenuItems,
      ),
    );
  }
}

List<SubMenuItem> subMenuItems = [
  SubMenuItem(
    title: 'Tagihan & Isi Ulang',
    icon: Icons.receipt,
  ),
  SubMenuItem(
    title: 'Internet Luar Negeri',
    icon: Icons.data_usage,
  ),
  SubMenuItem(
    title: 'Bioskop',
    icon: Icons.movie,
  ),
  SubMenuItem(
    title: 'PayLater',
    icon: Icons.payment,
  ),
  SubMenuItem(
    title: 'Status Penerbangan',
    icon: Icons.airplanemode_active,
  ),
  SubMenuItem(
    title: 'Pulsa & Paket Internet',
    icon: Icons.signal_cellular_4_bar,
  ),
  SubMenuItem(
    title: 'Online Check-In',
    icon: Icons.airplanemode_inactive,
  ),
  SubMenuItem(
    title: 'Notifikasi Harga',
    icon: Icons.notifications,
  ),
];

class SubMenuItem extends StatelessWidget {

  final String title;
  final IconData icon;

  const SubMenuItem({Key key, this.title, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      child: Column(
        children: [
          Icon(icon),
          Text(
            title,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}

class Banner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            'Promo Saat Ini',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22.0),
          ),
          trailing: IconButton(
            icon: Icon(Icons.keyboard_arrow_right),
            onPressed: () {},
          ),
        ),
        Container(
          width: double.infinity,
          height: 150.0,
          padding: const EdgeInsets.only(left: 8.0),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.blue,
                        Colors.blue[800],
                      ]),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                // padding: EdgeInsets.all(8.0),
                margin: EdgeInsets.only(left: 8.0),
                height: 150.0,
                width: 100.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.red[300],
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.elliptical(20.0,20.0),
                                bottomRight: Radius.elliptical(150.0, 150.0)
                            )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 2.0, left: 5.0, right: 30.0, bottom: 30.0),
                          child: Text('%', style: TextStyle(fontSize: 24.0,color: Colors.white),),
                        )),
                    Expanded(
                      child: Container(),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Lihat Semua \nPromo',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 18.0),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.blue,
                          Colors.blue[800],
                        ]),
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                        image: AssetImage('images/promo.jpeg'))),
                margin: EdgeInsets.only(left: 10.0),
                height: 150.0,
                width: 300.0,
                child: null,
              )
            ],
          ),
        )
      ],
    );
  }
}





