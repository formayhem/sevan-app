class Payout {
  final String id;
  final String participantId;
  final double amount;
  final DateTime payoutDate;

  Payout({
    required this.id,
    required this.participantId,
    required this.amount,
    required this.payoutDate,
  });
}