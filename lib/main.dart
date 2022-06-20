import 'package:flutter/material.dart';


class Studant {
  String name;
  int age;
  List<String> hobbies;
  Color color;
  Studant(this.name, this.age, this.hobbies, this.color);
  getstudant() {
    return 'Name: $name , Age: $age , Hobbies: ${hobbies.join(', ')}';
  }
}

List<Studant> studants = [
  Studant('mohamed', 10, ['running', 'reading'], Colors.amber),
  Studant('marym', 11, ['painting', 'danceing'], Colors.red),
  Studant('samt', 12, ['chess', 'footbool'], Colors.brown),
  Studant('jack', 13, ['reading', 'swiming'], Colors.green),
  Studant('sara', 14, ['painting', 'driving'], Colors.grey),
  Studant('areeg', 15, ['archry', 'cooking'], Colors.orange),
  Studant('noon', 16, ['photoing', 'photoing'], Colors.lightBlue),
  Studant('khalid', 17, ['criccat', 'chess'], Colors.pink),
  Studant('zainab', 18, ['criccat', 'gaming'], Colors.purple),
  Studant('asmaa', 19, ['criccat', 'running'], Colors.blue),
  Studant('alaa', 20, ['shopping', 'painting'], Colors.red),
  Studant('omar', 21, ['writing', 'shopping'], Colors.blue),
  Studant('ali', 22, ['cooking', 'reading'], Colors.lightGreen),
  Studant('esmat', 23, ['criccat', 'playing'], Colors.limeAccent),
  Studant('thany', 24, ['shopping', 'archry'], Colors.lime),
  Studant('kola', 25, ['gaming', 'writing'], Colors.blue),
  Studant('many', 26, ['photoing', 'shopping'], Colors.orangeAccent),
  Studant('xkld', 27, ['swiming', 'cooking'], Colors.red),
  Studant('shahd', 28, ['danceing', 'chess'], Colors.deepPurpleAccent),
  Studant('eram', 29, ['reading', 'chess'], Colors.grey),
];
List<Row> getrow() {
  List<Row>? rows = [];
  for (int j = 0; j < studants.length; j += 2) {
    /*Column column=Column(children:<Widget> [Text(studants[].name)],),*/
    Row row = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Card(
          child: Container(
            padding: const EdgeInsets.all(8.0),
            color: studants[j].color,
            width: 100,
            height: 100,
            child: Column(
              children: [
                Text(studants[j].name),
                Text(studants[j].age.toString()),
                Text(studants[j].hobbies.join(', ')),
              ],
            ),
          ),
        ),
        Card(
          child: Container(
            padding: const EdgeInsets.all(8.0),
            color: studants[j + 1].color,
            width: 100,
            height: 100,
            child: Column(
              children: [
                Text(studants[j + 1].name),
                Text(studants[j + 1].age.toString()),
                Text(studants[j + 1].hobbies.join(', ')),
              ],
            ),
          ),
        ),
      ],
    );
    rows.add(row);
  }

  return rows;
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.all_inbox),
        title: const Center(child: Text('Studants List')),
        actions: const [Icon(Icons.menu)],
      ),
      body: SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            children: getrow(),
          )),
    );
  }
}
