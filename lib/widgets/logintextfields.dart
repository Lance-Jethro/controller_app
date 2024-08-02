// login_text_fields.dart
import 'package:controller_app/barrel.dart';

class LoginTextFields extends StatefulWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final String? Function(String?) emailValidator;
  final String? Function(String?) passwordValidator;
  final bool obscureText;
  final void Function() toggleObscureText;
  final bool isChecked;
  final void Function(bool?) onCheckBoxChanged;

  const LoginTextFields({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.emailValidator,
    required this.passwordValidator,
    required this.obscureText,
    required this.toggleObscureText,
    required this.isChecked,
    required this.onCheckBoxChanged,
  });

  @override
  State<LoginTextFields> createState() => _LoginTextFieldsState();
}

class _LoginTextFieldsState extends State<LoginTextFields> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Email:",
          style: TextStyle(
            fontSize: 16,
            color: Color.fromARGB(255, 252, 128, 83),
          ),
        ),
        const SizedBox(height: 5),
        TextFormField(
          decoration: const InputDecoration(
            fillColor: Color.fromARGB(255, 252, 128, 83),
            border: OutlineInputBorder(),
            // labelText: 'Email Address',
            prefixIcon: Icon(Icons.alternate_email),
          ),
          keyboardType: TextInputType.emailAddress,
          controller: widget.emailController,
          validator: widget.emailValidator,
        ),
        const SizedBox(height: 15),
        const Text(
          "Password:",
          style: TextStyle(
            fontSize: 16,
            color: Color.fromARGB(255, 252, 128, 83),
          ),
        ),
        const SizedBox(height: 5),
        TextFormField(
          decoration: InputDecoration(
            fillColor: Colors.white,
            border: const OutlineInputBorder(),
            // labelText: 'Password',
            prefixIcon: const Icon(Icons.lock),
            suffixIcon: IconButton(
              icon: Icon(
                widget.obscureText ? Icons.visibility : Icons.visibility_off,
              ),
              onPressed: widget.toggleObscureText,
            ),
          ),
          obscureText: widget.obscureText,
          controller: widget.passwordController,
          validator: widget.passwordValidator,
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Checkbox(
              value: widget.isChecked,
              onChanged: widget.onCheckBoxChanged,
              activeColor: Color.fromARGB(255, 252, 128, 83),
            ),
            const Text("Remember me"),
          ],
        ),
      ],
    );
  }
}
