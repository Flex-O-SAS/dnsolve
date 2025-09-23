import 'package:dnsolve/dnsolve.dart';

void main() {
  solve();
}

Future<void> solve() async {
  final dnsolve = DNSolve();
  final response = await dnsolve.lookup(
    'demo._discovery.saas-office.io',
    dnsSec: true,
    type: RecordType.cname,
  );

  if (response.answer!.records != null) {
    for (final record in response.answer!.records!) {
      print(record.toBind);
    }
  }
}
