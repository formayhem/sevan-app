class Participant {
  final String id;
  final String name;
  final double contributionAmount;
  final bool hasReceivedPayout;

  Participant({
    required this.id,
    required this.name,
    required this.contributionAmount,
    required this.hasReceivedPayout,
  });
}