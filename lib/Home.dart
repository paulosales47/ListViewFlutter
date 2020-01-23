import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List _itens = [];

  void _carregarItens(){
    for(int i = 0; i < 10; i++){
      Map<String, dynamic> item = Map();
      item["titulo"] = "Titulo $i ipsum dolor sit amet";
      item["descricao"] = "Descrição $i ipsum dolor";
      _itens.add(item);
    }
  }

  @override
  Widget build(BuildContext context) {

    _carregarItens();

    return Scaffold(
      appBar: AppBar(
        title: Text("Lista"),
        backgroundColor: Colors.indigo,
      ),
      body: Container(
        child: ListView.builder(
          itemCount: _itens.length,
          itemBuilder: (context, indice){
            Map<String, dynamic> item = _itens[indice];

            return ListTile(
              title: Text(item["titulo"]),
              subtitle: Text(item["descricao"]),
            );
          })


      ),
    );
  }
}
