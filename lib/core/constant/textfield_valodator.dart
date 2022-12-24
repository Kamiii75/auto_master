String? validateEmailField(String? email) {
  String pattern =
      r"^[a-zA-Z0-9_.]+@(gmail|yahoo|outlook|apple|hotmail|mailbox|aim).com$";
  RegExp regex = RegExp(pattern);

  if (email == null || email.isEmpty || !regex.hasMatch(email)) {
    return 'Please enter a valid email';
  }
  return null;
}

String? validatePasswordField(String? password) {
  if (password == null || password.isEmpty || password.length < 6) {
    return 'Password should be at least 6 characters long';
  }
  return null;
}

String? validateNormalField(String? text) {
  if (text == null || text.isEmpty) {
    return 'Field is required';
  }
  return null;
}
