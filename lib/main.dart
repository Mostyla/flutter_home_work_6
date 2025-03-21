import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomeWork2(),
    );
  }
}

// Для проверки 1-ого и 2-ого дз, просьба подставить в Widget Build() HomeWork1 или HomeWork2
// По 3 дз:
// Была добавлена библиотека http , служит для работы с сетью, например: делаем запрос, получаем ответ, если код ответа успешный - продолжаем работу с данными, иначе обрабатываем ошибку.
// В дз было указано добавить бибиотеку path, на pub dev нашел не path, а path provider - по оценке она выше в топе, cлужит для работы с файловой сисетмой устройства
// json_serializable необходим для сеарилизации и десериализации json файлов, то есть преобразования объектов в json строку и обратно

class HomeWork2 extends StatefulWidget {
    const HomeWork2({super.key});

    @override
    State<HomeWork2> createState() => _HomeWork2State();
}

class _HomeWork2State extends State<HomeWork2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Работа с изображением и текстом"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/bmw_image.jpg"),
            Text("BMW M-series", style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontFamily: "Boldonse",
            ),)
          ],
        ),
      ),
    );
  }
}

class HomeWork1 extends StatefulWidget {
  const HomeWork1({super.key, required this.title});
  final String title;

  @override
  State<HomeWork1> createState() => _HomeWork1State();
}

class _HomeWork1State extends State<HomeWork1> {
  int _counter = 10;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Вы нажали на кнопку:'),
            Text(
              '$_counter раз',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );
  }
}
