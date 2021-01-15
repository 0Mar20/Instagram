//------------------------------- Model --------------------
class activityModel {
  String accname;
  String imgUrl;
  String content;
  bool follow;
  String time;
  bool followButton;

  activityModel({
   this.accname,
   this.imgUrl,
   this.content,
   this.follow,
   this.time,
    this.followButton
});
}

//--------------------------- Data ------------------------

List<activityModel> ActivitiesThisWeek = [
  activityModel(
      imgUrl: "assets/images/imgUrl4.jpg",
      accname: "mosalah",
      content: "started following you.",
      follow: false,
      followButton: true,
      time: "3d"
  ),
  activityModel(
      imgUrl: "assets/images/imgUrl2.jpg",
      accname: "cristiano",
      content: "started following you.",
      follow: false,
      followButton: true,
      time: "4d"
  ),
  activityModel(
      imgUrl: "assets/images/imgUrl3.jpg",
      accname: "leomessi",
      content: "shared 13 photos.",
      follow: false,
      followButton: true,
      time: "5d"
  ),
  activityModel(
      imgUrl: "assets/images/imgUrl4.jpg",
      accname: "mosalah",
      content: "started following you.",
      follow: false,
      followButton: true,
      time: "3d"
  ),
  activityModel(
      imgUrl: "assets/images/imgUrl2.jpg",
      accname: "cristiano",
      content: "started following you.",
      follow: false,
      followButton: true,
      time: "4d"
  ),
  activityModel(
      imgUrl: "assets/images/imgUrl3.jpg",
      accname: "leomessi",
      content: "shared 13 photos.",
      follow: false,
      followButton: true,
      time: "5d"
  ),
];

List<activityModel> ActivitiesEarlier = [
  activityModel(
      imgUrl: "assets/images/imgUrl4.jpg",
      accname: "mosalah",
      content: "started following you.",
      follow: false,
      followButton: true,
      time: "1w"
  ),
  activityModel(
      imgUrl: "assets/images/imgUrl2.jpg",
      accname: "cristiano",
      content: "started following you.",
      follow: false,
      followButton: false,
      time: "1w"
  ),
  activityModel(
      imgUrl: "assets/images/imgUrl3.jpg",
      accname: "leomessi",
      content: "started following you.",
      follow: false,
      followButton: false,
      time: "2w"
  ),activityModel(
      imgUrl: "assets/images/imgUrl4.jpg",
      accname: "mosalah",
      content: "started following you.",
      follow: false,
      followButton: true,
      time: "2w"
  ),
  activityModel(
      imgUrl: "assets/images/imgUrl2.jpg",
      accname: "cristiano",
      content: "started following you.",
      follow: false,
      followButton: true,
      time: "3w"
  ),
  activityModel(
      imgUrl: "assets/images/imgUrl3.jpg",
      accname: "leomessi",
      content: "started following you.",
      follow: false,
      followButton: false,
      time: "3w"
  ),
  activityModel(
      imgUrl: "assets/images/imgUrl3.jpg",
      accname: "leomessi",
      content: "started following you.",
      follow: false,
      followButton: true,
      time: "1m"
  ),
  activityModel(
      imgUrl: "assets/images/imgUrl3.jpg",
      accname: "leomessi",
      content: "started following you.",
      follow: false,
      followButton: false,
      time: "1m"
  ),
];

