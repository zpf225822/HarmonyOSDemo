@Entry
@Component
struct Index {
 @State message: string = '华为Mate60Pro'


  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(40)
          .fontWeight(FontWeight.Bold)
          .fontColor("red")
          .onClick(()=>{
            this.message='你看下我变了'
          })
        //访问网络资源
        Image("https://res.vmallres.com/pimages//uomcdn/CN/pms/202309/gbom/6942103107719/group//800_800_2C9860E04A825DAC41237D5B9F765408.png")
          .width(250);
        Text("图片数量");
        TextInput().type(InputType.Number)
        // 访问media下的资源
        // Image($r("app.media.yaowan"))
        //   .width(30);
        // 访问rawfile资源下的文件
        // Image($rawfile("mate60.png"))
        //   .width(200);
      }

      .width('100%')
    }
    .height('100%')
  }
}