class AppBanner{
  final int id;
  final String title;
  final String thumbnailUrl;
  final int page;
  AppBanner(this.id,this.title,this.thumbnailUrl,this.page);
}
//sample data
List<AppBanner> appBannerList = [
  AppBanner(1, "Profil", 'https://picsum.photos/id/1/400/300',2),
  AppBanner(2, "Inspiracja", 'https://picsum.photos/id/2/400/300',1),
  AppBanner(3, "HulaKula", 'https://picsum.photos/id/3/400/300',0),
  //AppBanner(4, "title", 'https://picsum.photos/id/4/400/300'),

];