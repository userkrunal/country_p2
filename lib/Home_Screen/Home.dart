import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List country=[
    "INDIA",
    "RUSSIA",
    "USA",
    "JAPAN",
    "CHINA",
    "ENGLAND",
    "IRELAND",
    "CANADA",
    "ISRAIL",
    "NEPAL"
  ];
  List flag = [
    "🇮🇳 ",
    "🇷🇺 ",
    "🇺🇸 ",
    "🇯🇵 ",
    "🇨🇳",
    "🇬🇧 ",
    "🇮🇪 ",
    "🇨🇦 ",
    "🇮🇱 ",
    "🇳🇵 ",
  ];
  List temp =[];
  List president = [
    "https://upload.wikimedia.org/wikipedia/commons/2/2e/Prime_Minister%2C_Shri_Narendra_Modi%2C_in_New_Delhi_on_August_08%2C_2019_%28cropped%29.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/4/47/Vladimir_Putin_17-11-2021_%28cropped%29.jpg",
    "https://www.loc.gov/static/portals/free-to-use/public-domain/presidential-portraits/46-joe-biden.png",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoJsy4MXkNylqHGaMiezgma7sodJ7oAfpU1g&usqp=CAU",
    "https://media-cldnry.s-nbcnews.com/image/upload/newscms/2018_08/2340871/xijinping.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStExUg3jqJ5ph-mqaRxyycTBKhWyLEL1LWQ0eU3XpuGhIswE4eF8tLGlKRvHfoohxsHEM&usqp=CAU",
    "https://i.guim.co.uk/img/media/3950e5c2682748b01948aa56147e712fd320a76d/0_90_2378_1427/master/2378.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=66fd4aa39ace24b07c159946a7e90b50",
    "https://cdn.vox-cdn.com/thumbor/ev2FV8BS9CnkcKh7SSP0r8zE7y0=/0x102:2388x1445/1600x900/cdn.vox-cdn.com/uploads/chorus_image/image/49041353/GettyImages-499135456.0.jpg",
    "https://i.guim.co.uk/img/media/05540dd0ecd6c6a53fa22f2bb192817bbb475aa2/0_0_4305_2582/master/4305.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=bea2cb28535dad12a6f6e0b846cacba8",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnhwA8eVAra9tbrgcchWIaAcqbNPHmj_DAqw&usqp=CAU",
  ];
  List col=[
    Colors.lightBlue,
    Colors.orange,
    Colors.amber,
    Colors.deepPurpleAccent,
    Colors.purpleAccent,
    Colors.indigoAccent,
    Colors.lightGreenAccent,
    Colors.red,
    Colors.yellowAccent,
    Colors.cyan,
  ];
  List no =[
    0,1,2,3,4,5,6,7,8,9
  ];


  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(backgroundColor: Colors.red.shade50,
        appBar: AppBar(backgroundColor: Colors.brown,
          leading: Icon(
            Icons.featured_play_list_outlined,
          ),
          title: Text(
            " COUNTRIES",
            style: TextStyle(fontSize: 25, letterSpacing: 5),
          ),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: flag.asMap().entries.map((e) =>

                  InkWell(
                    onTap: () {
                      temp = [country,flag,president,col,no];
                      Navigator.pushNamed(context, "UI", arguments: temp);
                    },
                    child: list(flag[e.key], country[e.key],
                        e.key % 2 == 0 ? Colors.pinkAccent : Colors.tealAccent ),
                  ))
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }

  Widget list(String flag, String country,Color col) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(height: 20,),
        Container(
          height: 40,
          width: double.infinity,
          color: col,
          child: Text("$flag $country",style: TextStyle(color: Colors.green),),
        ),
      ],
    );
  }
}
