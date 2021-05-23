class StatusModel {
  final pic;
  final name;
  final time;

  StatusModel(this.pic, this.name, this.time);
}

List<StatusModel> statusmodal = [
  StatusModel('https://randomuser.me/api/portraits/men/10.jpg', 'Jhonathan',
      '12.30 PM'),
  StatusModel(
      'https://randomuser.me/api/portraits/men/2.jpg', 'Abinesh', '11.30 PM'),
  StatusModel(
      'https://randomuser.me/api/portraits/men/14.jpg', 'Velan', '9.30 PM'),
  StatusModel(
      'https://randomuser.me/api/portraits/men/6.jpg', 'Ronaldo', '10.00 PM'),
  StatusModel(
      'https://randomuser.me/api/portraits/men/9.jpg', 'Alan', '5.30 AM'),
  StatusModel(
      'https://randomuser.me/api/portraits/men/3.jpg', 'Rocky', '12.30 AM'),
];
