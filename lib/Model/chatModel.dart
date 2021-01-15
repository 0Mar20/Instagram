// ----------------------- Model ----------------------
class ChatModel {

  String imgUrl;
  String accname;
  String tag;
  int active;
  String last;

  ChatModel({
    this.imgUrl,
    this.accname,
    this.tag,
    this.active,
    this.last
  });

}


// ----------------------- Data --------------------------
List <ChatModel> Chats = [

  ChatModel(
    imgUrl: "assets/images/imgUrl2.jpg",
    accname: "cristiano",
    tag: "Cristiano Ronaldo",
    active: 0,
    last: "Active 4h ago"
  ),
  ChatModel(
    imgUrl: "assets/images/imgUrl4.jpg",
    accname: "mosalah",
    tag: "Mohammed Salah",
    active: 1,
    last: "Active now"
  ),
  ChatModel(
    imgUrl: "assets/images/imgUrl3.jpg",
    accname: "leomessi",
    tag: "Lionel Messi",
    active: 0,
    last: "Active 82h ago"
  ),
  ChatModel(
    imgUrl: "assets/images/imgUrl2.jpg",
    accname: "cristiano",
    tag: "Cristiano Ronaldo",
    active: 2,
  ),
  ChatModel(
    imgUrl: "assets/images/imgUrl4.jpg",
    accname: "mosalah",
    tag: "Mohammed Salah",
    active: 2,
  ),
  ChatModel(
    imgUrl: "assets/images/imgUrl3.jpg",
    accname: "leomessi",
    tag: "Lionel Messi",
    active: 2,
  ),

];