enum LaundryStatus{
  received("Diterima"),
  doing("Dikerjakan"),
  completed("Selesai"),
  retrieved("Sudah diambil");

  final String name;
  const LaundryStatus(this.name);
}