import 'package:flutter/material.dart';

class ProductCreatePage extends StatefulWidget {
  final Function addProduct;

  ProductCreatePage(this.addProduct);

  @override
  State<StatefulWidget> createState() {
    return _ProductCreatePageState();
  }
}

class _ProductCreatePageState extends State<ProductCreatePage> {
final Map<String , dynamic> _formData = {
  'title': null,
  'description': null,
  'price': null,
  'image': 'assets/food.jpg'
};

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _submit() {
    if (!_formKey.currentState.validate()){
       return;
     }
    _formKey.currentState.save();
    widget.addProduct(_formData);
    Navigator.pushReplacementNamed(context, '/products');
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){ 
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child:  Container(
      margin: EdgeInsets.all(10.0),
      child: Form(
        key: _formKey,
        child: ListView(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(labelText: "Title"),
              validator: (String value) {
                if (value.isEmpty || value.length < 5){
                  return "Title is required or Title is so quit";
                }
              },
              onSaved: (String value) {
                setState(() {
                  _formData['title'] = value;
                });
              },
            ),
            TextFormField(
              maxLines: 4,
              decoration: InputDecoration(labelText: "Description"),

              onSaved: (String value) {
                setState(() {
                  _formData['description'] = value;
                });
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "Price"),
              keyboardType: TextInputType.number,
              onSaved: (String value) {
                setState(() {
                  _formData['price'] = double.parse(value);
                });
              },
            ),
            RaisedButton(
              child: Text("Save"),
              color: Theme.of(context).primaryColor,
              textColor: Colors.black,
              onPressed: _submit,
            )
          ],
        ),
      ),
    ),);
  }
}
