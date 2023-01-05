import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../children/settings/domain/bloc/settings.dart';

class TextFormWidget extends StatelessWidget {
  final String wValue;
  final String wLabel;
  final IconData wIcon;
  final String wKey;
  final NumType wType;

  const TextFormWidget({
    Key? key,
    required this.wLabel,
    required this.wIcon,
    required this.wKey,
    required this.wValue,
    required this.wType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: wValue,
      decoration: InputDecoration(
        icon: Icon(wIcon),
        labelText: wLabel,
      ),
      keyboardType: TextInputType.text,
      onFieldSubmitted: (String newValue) {
        switch (wType) {
          case NumType.tInt:
            context
                .read<SettingsBloc>()
                .add(SettingsEvent.changed(wKey, int.parse(newValue)));
            break;
          case NumType.tDouble:
            context
                .read<SettingsBloc>()
                .add(SettingsEvent.changed(wKey, double.parse(newValue)));
            break;
          case NumType.tString:
            context
                .read<SettingsBloc>()
                .add(SettingsEvent.changed(wKey, newValue));
            break;
          default:
            context
                .read<SettingsBloc>()
                .add(SettingsEvent.changed(wKey, newValue));
        }
      },
    );
  }
}

enum NumType { tInt, tDouble, tString }
