@Entry
@Component
struct Index {
 @State message: string = '看一下效果'


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
        Image("https://res.vmallres.com/pimages//uomcdn/CN/pms/202309/gbom/6942103107719/group//800_800_2C9860E04A825DAC41237D5B9F765408.png")
          .width(vp2px(100))
      }
      .width('100%')
    }
    .height('100%')
  }
}