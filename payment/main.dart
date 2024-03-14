import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';


void main()
{
  runApp(MaterialApp(home:MyPaymentScreen()));
}
class MyPaymentScreen extends StatefulWidget
{
  @override
  _MyPaymentScreenState createState() => _MyPaymentScreenState();
}

class _MyPaymentScreenState extends State<MyPaymentScreen>
{
  late Razorpay _razorpay;

  @override
  void initState()
  {
    super.initState();
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  @override
  void dispose()
  {
    super.dispose();
    _razorpay.clear();
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    // Payment success logic
    print("Payment Success: ${response.paymentId}");
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    // Payment failure logic
    print("Payment Error: ${response.code} - ${response.message}");
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    // External wallet logic
    print("External Wallet: ${response.walletName}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payment Gateway Integration"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _openCheckout();
          },
          child: Text("Pay Now"),
        ),
      ),
    );
  }

  void _openCheckout() async
  {
    var options = {
      'key': 'rzp_test_7PX7ejznhsbYwJ',
      'amount': 10000, // amount in the smallest currency unit (e.g., cents for USD)
      'name': 'Your Company Name',
      'description': 'Product description',
      'prefill': {'contact': '1234567890', 'email': 'test@example.com'},
      'external': {
        'wallets': ['paytm']
      }
    };

    try {
      _razorpay.open(options);
    } catch (e) {
      debugPrint('Error: ${e.toString()}');
    }
  }
}
