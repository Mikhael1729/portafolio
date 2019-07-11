import 'package:flutter/material.dart';

class ConversionPage extends StatefulWidget {
  ConversionPage({Key key}) : super(key: key);

  _ConversionPageState createState() => _ConversionPageState();
}

class _ConversionPageState extends State<ConversionPage> {
  final _unconvertedFieldController = TextEditingController();
  final _convertedFieldController = TextEditingController();

  _convertToBinary() {
    var number = int.parse(_unconvertedFieldController.text);
    var binaryNumber = 0;
    var i = 1;

    while(number > 0)
    {
        binaryNumber = binaryNumber + (number % 2) * i;
        number = (number / 2).floor();
        i = i * 10;
    }

    _convertedFieldController.text = binaryNumber.toString();
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    _unconvertedFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.fromLTRB(24, 24, 24, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Conclusiones (title).
            Text(
              "Decimal a binario",
              softWrap: true,
              style: TextStyle(
                fontSize: 36,
              ),
            ),

            Divider(color: Colors.transparent),
            Divider(color: Colors.transparent),
            Divider(color: Colors.transparent),

            // Before conversion (TextField).
            TextField(
              controller: _unconvertedFieldController,
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                border: new OutlineInputBorder(
                    borderSide: new BorderSide(color: Colors.teal)),
                helperText: 'Ej: 1729',
                labelText: 'Número en decimal',
              ),
            ),

            Divider(color: Colors.transparent),

            // After conversion (TextField).
            TextField(
              controller: _convertedFieldController,
              keyboardType: TextInputType.number,
              enabled: false,
              decoration: InputDecoration(
                filled: true,
                hintStyle: TextStyle(color: Colors.grey[800]),
                fillColor: Colors.transparent,
                helperText: "Número en binario. Ej: 010",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF1D2030),
                    width: 32.0,
                  ),
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF1D2030),
                    width: 32.0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF1D2030),
                    width: 32.0,
                  ),
                ),
              ),
            ),


            FlatButton(
              onPressed: _convertToBinary,
              color: Colors.blue,
              child: Text("Convertir a binario"),
            ),
          ],
        ),
      ),
    );
  }
}
