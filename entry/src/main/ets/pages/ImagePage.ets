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

        //对图片进行点击放大 缩小
        Button("缩小")
          .fontSize(20)
          .width(140)
          .type(ButtonType.Capsule)
          .onClick(()=>{
            if(this.imageWidth>=20){
              this.imageWidth=this.imageWidth-10
            }else {
              return "太小了"
            }
          })
        Button("放大")
          .fontSize(20)
          .width(140)
          .type(ButtonType.Capsule)
          .onClick(()=>{
            if(this.imageWidth<=300){
              this.imageWidth=this.imageWidth+40
            }else {
              return "太大了"
            }
          })
        Slider({
          min:30,
          max:200,
          value:30,
          step:5,
          style:SliderStyle.InSet,
          direction:Axis.Horizontal,
          reverse:false
        }).showSteps(true)
          .showTips(true)
          .blockColor("red")
          .trackThickness(18)
          .onChange((value)=>{
            this.imageWidth=value
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}