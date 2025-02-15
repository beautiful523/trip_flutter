import 'package:flutter/material.dart';

///登录输入框，自定义widget
class InputWidget extends StatelessWidget {
  final String hint; // 提示
  final ValueChanged<String>? onChanged;
  final bool obscureText; // 是否以密码的方式显示
  final TextInputType? keyboardType;

  const InputWidget(
    this.hint, {
    super.key,
    this.onChanged,
    this.obscureText = false,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _input(),
        const Divider(color: Colors.white, height: 1, thickness: 0.5),
      ],
    );
  }

  _input() {
    return TextField(
      onChanged: onChanged,
      obscureText: obscureText,
      keyboardType: keyboardType,
      autofocus: !obscureText,
      cursorColor: Colors.white,
      style: const TextStyle(
        fontSize: 17,
        color: Colors.white,
        fontWeight: FontWeight.w400,
      ),
      //输入框的样式
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: hint,
        hintStyle: const TextStyle(fontSize: 17, color: Colors.grey),
      ),
    );
  }
}
