import 'package:flutter/material.dart';
import 'package:dice_thrower/dice_thrower.dart'
    show diceThrower, oneDiceThrower;

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
      home: const MyHomePage(title: 'Kostky žoldnéřů'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _twentyDiceValue = 20;
  int _sixDiceValue = 6;
  int _sixDiceValue2 = 6;
  int _sixDiceValue3 = 6;

  void getTwentyDiceValue() async {
    int value = await oneDiceThrower(20);
    setState(() {
      _twentyDiceValue = value;
    });
  }

  void getSixDiceValue() async {
    int value = await oneDiceThrower(6);
    setState(() {
      _sixDiceValue = value;
    });
  }

  void getSixDiceValue2() async {
    int value = await oneDiceThrower(6);
    setState(() {
      _sixDiceValue2 = value;
    });
  }

  void getSixDiceValue3() async {
    int value = await oneDiceThrower(6);
    setState(() {
      _sixDiceValue3 = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          // Vypočítej výšku pro každý blok (text + kostka) rovnoměrně
          final int blockCount = 4;
          final double blockHeight = constraints.maxHeight / blockCount;
          // Výška textu (odhadneme na 20% bloku), zbytek pro kostku
          final double labelHeight = blockHeight * 0.22;
          final double boxSize = blockHeight - labelHeight - 8; // 8px mezera

          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Dvacítka
                SizedBox(
                  height: blockHeight,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: labelHeight,
                        width: double.infinity,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            'Dvacítka:',
                            style: Theme.of(context).textTheme.headlineMedium,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Align(
                        alignment: Alignment.center,
                        child: InkWell(
                          onTap: getTwentyDiceValue,
                          child: Container(
                            width: boxSize,
                            height: boxSize,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.deepPurple,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  '$_twentyDiceValue',
                                  style:
                                      Theme.of(context).textTheme.displayLarge,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Šestka 1
                SizedBox(
                  height: blockHeight,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: labelHeight,
                        width: double.infinity,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            'Šestka 1:',
                            style: Theme.of(context).textTheme.headlineMedium,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Align(
                        alignment: Alignment.center,
                        child: InkWell(
                          onTap: getSixDiceValue,
                          child: Container(
                            width: boxSize,
                            height: boxSize,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.deepPurple,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  '$_sixDiceValue',
                                  style:
                                      Theme.of(context).textTheme.displayLarge,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Šestka 2
                SizedBox(
                  height: blockHeight,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: labelHeight,
                        width: double.infinity,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            'Šestka 2:',
                            style: Theme.of(context).textTheme.headlineMedium,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Align(
                        alignment: Alignment.center,
                        child: InkWell(
                          onTap: getSixDiceValue2,
                          child: Container(
                            width: boxSize,
                            height: boxSize,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.deepPurple,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  '$_sixDiceValue2',
                                  style:
                                      Theme.of(context).textTheme.displayLarge,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Šestka 3
                SizedBox(
                  height: blockHeight,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: labelHeight,
                        width: double.infinity,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            'Šestka 3:',
                            style: Theme.of(context).textTheme.headlineMedium,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Align(
                        alignment: Alignment.center,
                        child: InkWell(
                          onTap: getSixDiceValue3,
                          child: Container(
                            width: boxSize,
                            height: boxSize,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.deepPurple,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  '$_sixDiceValue3',
                                  style:
                                      Theme.of(context).textTheme.displayLarge,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
