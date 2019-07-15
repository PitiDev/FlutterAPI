import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AddData extends StatefulWidget {
  @override
  _AddDataState createState() => new _AddDataState();
}

class _AddDataState extends State<AddData> {
  TextEditingController controllerCode = new TextEditingController();
  TextEditingController controllerName = new TextEditingController();
  TextEditingController controllerPrice = new TextEditingController();
  TextEditingController controllerStock = new TextEditingController();

  void addData() {
    var url = "http://192.168.43.22/PHP-REST-API/adddata.php";

    http.post(url, body: {
      "itemcode": controllerCode.text,
      "itemname": controllerName.text,
      "price": controllerPrice.text,
      "stock": controllerStock.text
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("ADD DATA"),
      ),
      body: Container(
        padding: const EdgeInsets.all(30.0),
        child: ListView(
          children: <Widget>[
            new Column(
              children: <Widget>[
                new Container(
                  height: 20.0,
                ),
                new TextField(
                  controller: controllerCode,
                  decoration: new InputDecoration(
                      border: new OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(30.0),
                          ),
                          borderSide: new BorderSide(color: Colors.teal)),
                      hintText: "Item Code",
                      labelText: "Item Code"),
                ),
                new Container(
                  height: 20.0,
                ),
                new TextField(
                  controller: controllerName,
                  decoration: new InputDecoration(
                      border: new OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(30.0),
                          ),
                          borderSide: new BorderSide(color: Colors.teal)),
                      hintText: "Item Name",
                      labelText: "Item Name"),
                ),
                new Container(
                  height: 20.0,
                ),
                new TextField(
                  controller: controllerPrice,
                  decoration: new InputDecoration(
                      border: new OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(30.0),
                          ),
                          borderSide: new BorderSide(color: Colors.teal)),
                      hintText: "Price",
                      labelText: "Price"),
                ),
                new Container(
                  height: 20.0,
                ),
                new TextField(
                  controller: controllerStock,
                  decoration: new InputDecoration(
                      border: new OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(30.0),
                          ),
                          borderSide: new BorderSide(color: Colors.teal)),
                      hintText: "Stock",
                      labelText: "Stock"),
                ),
                new Padding(
                  padding: const EdgeInsets.all(10.0),
                ),
                new SizedBox(
                  width: 300.0,
                  height: 55.0,
                  child: new RaisedButton(
                    child: new Text(
                      "ADD DATA",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.blueAccent,
                    onPressed: () {
                      addData();
                      Navigator.pop(context);
                    },
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                  ),
                ),
                new Container(
                  margin: EdgeInsets.only(bottom: 20.0),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
