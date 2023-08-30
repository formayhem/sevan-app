class ParticipantContribution {
  final String id;
  final String participantId;
  final double amount;
  final DateTime contributionDate;

  ParticipantContribution({
    required this.id,
    required this.participantId,
    required this.amount,
    required this.contributionDate,
  });
}