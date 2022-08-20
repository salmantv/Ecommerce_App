import 'package:get/get.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class OrderConfirmationController extends GetxController {
  late Razorpay _razorpay;
  @override
  void onInit() {
    super.onInit();
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, handleExternalWallet);
  }

  var options = {
    'key': 'rzp_test_skEz4bIrfT5GkV',
    'amount': 5000,
    'name': 'Acme Corp.',
    'description': 'Fine T-Shirt',
    'timeout': 60, // in seconds
    'prefill': {'contact': '9123456789', 'email': 'gaurav.kumar@example.com'}
  };

  void calltheapi() {
    try {
      _razorpay.open(options);
    } catch (e) {
      print(e.toString());
    }
  }

  void handlePaymentSuccess(PaymentSuccessResponse response) {
    print("dsd");
  }

  void handlePaymentError(PaymentFailureResponse response) {
    print("faid");
  }

  void handleExternalWallet(ExternalWalletResponse response) {
    print("hello");
  }

  @override
  void dispose() {
    super.dispose();
    // _razorpay.clear();
  }
}
