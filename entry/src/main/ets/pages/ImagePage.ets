@Entry
@Component
struct Index {
  @State message: string = '华为Mate60Pro'
  //注意小写 numb
  @State imageWidth: number = 30


  //根据输入的数字,动态调整图片的大小
  build() {
    Row() {
      Column() {
        //访问网络资源
        Image($r("app.media.yaowan"))
          .width(this.imageWidth)
          .interpolation(ImageInterpolation.High)


        Text($r("app.string.width_label"))
          .fontSize(24)
          .fontWeight(FontWeight.Normal);
        TextInput({placeholder:"请输入数量",text:this.imageWidth.toFixed(0)})
          .width(140)
          .height(40)
          .maxLength(200)
          .type(InputType.Number).onChange(value=>{
            console.log("用户输入的数量是-->"+value)
          this.imageWidth=parseInt(value)
        })
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