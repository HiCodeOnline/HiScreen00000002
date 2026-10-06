import { window } from '@kit.ArkUI';

@Entry
@ComponentV2
struct Index {

  onPageShow() {
    const context = this.getUIContext().getHostContext();
    if (context) {
      window.getLastWindow(context).then((win: window.Window) => {
        win.setWindowLayoutFullScreen(true).catch();
        win.setSpecificSystemBarEnabled('status', false).catch();
        win.setSpecificSystemBarEnabled('navigationIndicator', false).catch();
      }).catch(() => {});
    }
  }

  onPageHide() {
    const context = this.getUIContext().getHostContext();
    if (context) {
      window.getLastWindow(context).then((win: window.Window) => {
        win.setSpecificSystemBarEnabled('status', true).catch();
        win.setSpecificSystemBarEnabled('navigationIndicator', true).catch();
      }).catch();
    }
  }

  @Builder
  LoginScreen() {
    Image($r('app.media.img_bg'))
      .width('100%')
    RelativeContainer() {
      Column() {
        Row() {
          Text("The")
            .fontSize(24)
            .fontWeight(FontWeight.Bolder)
            .fontColor(Color.Black)
            .margin({
              right: 6
            })
          Text("people")
            .fontSize(24)
            .fontWeight(FontWeight.Bolder)
            .fontColor('#d73a61')
            .margin({
              right: 6
            })
          Text("platform")
            .fontSize(24)
            .fontWeight(FontWeight.Bolder)
            .fontColor(Color.Black)
            .margin({
              right: 6
            })
        }
        .width('100%')
        .height(56)
        .justifyContent(FlexAlign.Center)
        .alignItems(VerticalAlign.Center)
        .margin({
          bottom: 12
        })

        Button(){
          Row() {
            Image($r('app.media.icon_google'))
              .width(20)
              .height(20)
              .margin({ right: 8 })
            Text('Continue with Google')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
          }
          .alignItems(VerticalAlign.Center)
        }
        .width('100%')
        .height(56)
        .backgroundColor(Color.White)
        .border({
          width: 1,
          color: '#DFDFDF'
        })
        .borderRadius(28)
        .margin({
          bottom: 12
        })
        .onClick((event: ClickEvent) => {

        })

        Button(){
          Row() {
            Image($r('app.media.icon_apple'))
              .width(20)
              .height(20)
              .margin({ right: 8 })
            Text('Continue with Apple')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
          }
          .alignItems(VerticalAlign.Center)
        }
        .width('100%')
        .height(56)
        .fontColor(Color.White)
        .backgroundColor(Color.Black)
        .borderRadius(28)
        .margin({
          bottom: 12
        })
        .onClick((event: ClickEvent) => {

        })

        Button(){
          Row() {
            Image($r('app.media.icon_facebook'))
              .width(20)
              .height(20)
              .margin({ right: 8 })
            Text('Continue with Facebook')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
          }
          .alignItems(VerticalAlign.Center)
        }
        .width('100%')
        .height(56)
        .fontColor(Color.White)
        .backgroundColor('#5b6cd8')
        .borderRadius(28)
        .margin({
          bottom: 24
        })
        .onClick((event: ClickEvent) => {

        })

        Row() {
          Divider()
            .color('#CCCCCC')
            .strokeWidth(1)
            .layoutWeight(1)

          Text('or')
            .fontSize(14)
            .fontColor('#999999')
            .margin({ left: 12, right: 12 })

          Divider()
            .color('#CCCCCC')
            .strokeWidth(1)
            .layoutWeight(1)
        }
        .width('100%')
        .margin({
          bottom: 24
        })
        .alignItems(VerticalAlign.Center)

        Button(){
          Row() {
            Text('Sign up with email')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
          }
          .alignItems(VerticalAlign.Center)
        }
        .width('100%')
        .height(56)
        .fontColor('#2f205f')
        .backgroundColor('#f9f2fe')
        .borderRadius(28)
        .margin({
          bottom: 12
        })
        .onClick((event: ClickEvent) => {

        })

        Button(){
          Row() {
            Text('Login in with email')
              .fontSize(16)
              .fontColor('#3e3e3e')
              .fontWeight(FontWeight.Bold)
              .decoration({
                type: TextDecorationType.Underline,
                color: '#3e3e3e'
              })
          }
          .alignItems(VerticalAlign.Center)
        }
        .width('100%')
        .height(56)
        .backgroundColor(Color.White)
        .borderRadius(28)
        .margin({
          bottom: 32
        })
        .onClick((event: ClickEvent) => {

        })
      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceAround)
      .padding({
        left: 24,
        right: 24
      })
      .alignRules({
        bottom: { anchor: '__container__', align: VerticalAlign.Bottom },
        left: { anchor: '__container__', align: HorizontalAlign.Start }
      })
    }
    .width('100%')
    .height('100%')
  }

  build() {
    Stack({ alignContent: Alignment.TopStart  }) {
      this.LoginScreen()
    }
    .width('100%')
    .height('100%')
  }

}