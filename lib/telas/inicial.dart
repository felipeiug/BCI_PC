import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class PaginaInicial extends StatefulWidget {
  PaginaInicial();

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<PaginaInicial> {
  List<String> arquivoSalvos = [];

  Widget _itemBuilder(BuildContext ctx, int i) {
    return Card();
  }

  void _novoBoletim() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(100, 100, 100, 0.15),
      appBar: AppBar(
        title: Text("Arquivos Criados"),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(itemBuilder: _itemBuilder),
            ),
            Card(
              child: ListTile(
                onTap: _novoBoletim,
                title: Text("Novo Boletim"),
                subtitle: Text("Escolher o caminho e criar um novo arquivo"),
                leading: IconButton(
                  icon: Icon(Icons.plus_one),
                  onPressed: _novoBoletim,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Novo Boletim',
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
