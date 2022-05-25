//TextMenuCard 위젯에 사용할 데이터 모델 클래스와 내정보 화면에서 사용할 리스트 데이터.
class TextMenu {
  String? text;
  String? icon;
  String? path;

  TextMenu({this.icon, this.path, this.text});
}

//Menu Data
List<TextMenu> textMenuList = [
  TextMenu(text: "배송 안내", icon: "assets/icons/right-arrow.svg", path: "/"),
  TextMenu(text: "공지 사항", icon: "assets/icons/right-arrow.svg", path: "/"),
  TextMenu(text: "자주하는 질문", icon: "assets/icons/right-arrow.svg", path: "/"),
  TextMenu(text: "고객센터", icon: "assets/icons/right-arrow.svg", path: "/"),
  TextMenu(text: "이용안내", icon: "assets/icons/right-arrow.svg", path: "/"),
  TextMenu(text: "어플 소개", icon: "assets/icons/right-arrow.svg", path: "/"),
];