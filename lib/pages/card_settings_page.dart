import 'package:flutter/material.dart';
import 'package:card_settings/card_settings.dart';

class CardSettingsPage extends StatefulWidget {
  @override
  _CardSettingsPageState createState() => _CardSettingsPageState();
}

class _CardSettingsPageState extends State<CardSettingsPage> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _nameController=TextEditingController();
  TextEditingController _ageController=TextEditingController();
  bool _autoValidate = false;

  @override
  void initState() {
    super.initState();
    _nameController.text='张三';
    _ageController.text='18';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('表单界面'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.save),
              onPressed: _savePressed
          )
        ],
      ),
      body: Form(
        key: _formKey,
        child: CardSettings.sectioned(
          children: <CardSettingsSection>[
            CardSettingsSection(
              header: CardSettingsHeader(label: '我是标题'),
              children: <Widget>[
                _buildCardSettingsText_Name('姓名',_nameController),
                _buildCardSettingsText_Name('年龄',_ageController)
              ],
            )
          ],
        ),
      ),
    );
  }

  CardSettingsText _buildCardSettingsText_Name(String label,
      TextEditingController textController) {
    return CardSettingsText(
      label: label,
      controller: textController,
      initialValue: textController.text,
      requiredIndicator: Text('*', style: TextStyle(color: Colors.red)),
      autovalidate: _autoValidate,
      validator: (value) {
        if (value == null || value.isEmpty) return '此项不得为空';
        return null;
      },
    );
  }

  Future _savePressed() async {
    final form = _formKey.currentState;
    if (form.validate()) {
      form.save();
    } else {
      setState(() => _autoValidate = true);
    }
  }
}
