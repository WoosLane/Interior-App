class NavItem {
  late final int id;
  final String icon;
  final String label;

  NavItem({required this.label, required this.id, required this.icon});
}

List<NavItem> navItems =[
  NavItem(id: 0, label: "홈", icon: "assets/icons/home.svg"),
  NavItem(id: 0, label: "추천", icon: "assets/icons/star.svg"),
  NavItem(id: 0, label: "카테고리", icon: "assets/icons/square.svg"),
  NavItem(id: 0, label: "검색", icon: "assets/icons/loupe.svg"),
  NavItem(id: 0, label: "마이컬리", icon: "assets/icons/user.svg"),
];