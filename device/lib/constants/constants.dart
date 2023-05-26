import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showMessage(String message) {
  Fluttertoast.showToast(
    msg: message,
    backgroundColor: Colors.red,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}

showLoaderDialog(BuildContext context) {
  AlertDialog alert = AlertDialog(
    content: Builder(builder: (context) {
      return SizedBox(
        width: 100,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CircularProgressIndicator(
              color: Color(0xffe16555),
            ),
            const SizedBox(
              height: 18.0,
            ),
            Container(
                margin: const EdgeInsets.only(left: 7),
                child: const Text("Loading...")),
          ],
        ),
      );
    }),
  );
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

String getMessageFromErrorCode(String errorCode) {
  switch (errorCode) {
    case "ERROR_EMAIL_ALREADY_IN_USE":
      return "Email đã được sử dụng. Tới trang đăng nhập.";
    case "account-exists-with-different-credential":
      return "Email đã được sử dụng. Tới trang đăng nhập.";
    case "email-already-in-use":
      return "Email đã được sử dụng. Tới trang đăng nhập.";
    case "ERROR_WRONG_PASSWORD":
    case "wrong-password":
      return "Sai mật khẩu ";
    case "ERROR_USER_NOT_FOUND":
      return "Không tìm thấy người dùng nào với email này.";
    case "user-not-found":
      return "Không tìm thấy người dùng nào với email này.";
    case "ERROR_USER_DISABLED":
      return "Người dùng bị vô hiệu hóa.";
    case "user-disabled":
      return "Người dùng bị vô hiệu hóa";
    case "ERROR_TOO_MANY_REQUESTS":
      return "Quá nhiều yêu cầu đăng nhập vào tài khoản này.";
    case "operation-not-allowed":
      return "Quá nhiều yêu cầu đăng nhập vào tài khoản này.";
    case "ERROR_OPERATION_NOT_ALLOWED":
      return "Quá nhiều yêu cầu đăng nhập vào tài khoản này.";
    case "ERROR_INVALID_EMAIL":
      return "Địa chỉ email không hợp lệ.";
    case "invalid-email":
      return "Địa chỉ email không hợp lệ.";
    default:
      return "Đăng nhập thất bại. Vui lòng thử lại.";
  }
}

bool loginVaildation(String email, String password) {
  if (email.isEmpty && password.isEmpty) {
    showMessage("Cả hai trường đều trống");
    return false;
  } else if (email.isEmpty) {
    showMessage("Email trống");
    return false;
  } else if (password.isEmpty) {
    showMessage("Password trống");
    return false;
  } else {
    return true;
  }
}

bool signUpVaildation(
    String email, String password, String name, String phone) {
  if (email.isEmpty && password.isEmpty && name.isEmpty && phone.isEmpty) {
    showMessage("All Fields are empty");
    return false;
  } else if (name.isEmpty) {
    showMessage("Name is Empty");
    return false;
  } else if (email.isEmpty) {
    showMessage("Email is Empty");
    return false;
  } else if (phone.isEmpty) {
    showMessage("Phone is Empty");
    return false;
  } else if (password.isEmpty) {
    showMessage("Password is Empty");
    return false;
  } else {
    return true;
  }
}
