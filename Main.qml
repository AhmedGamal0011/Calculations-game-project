import Felgo 3.0
import QtQuick 2.0
import QtMultimedia 5.12
import VPlay 1.0
import QtQuick 2.3
GameWindow {
    id: gameWindow
    screenWidth: 1000
    screenHeight: 9800

    Scene{

    id:scene
    BackgroundMusic {
      id: backgroundMusic
      source: "../sound/Back.wav"
      // autoPlay: true - this is set by default
    }
    Rectangle{
        anchors.fill:parent.gameWindowAnchorItem
        Image {
            id: background
            source: "../bggg.jpg"
        }

      /*  if(score.points===2){
            console.log("Good")


        }*/

GameButton{
    id:x1
               property int num:utils.generateRandomValueBetween(10,20);
    height:17
    width:17

    text:num

    y:90
    x:215

}
Rectangle {
    width: 10
    border.width: 1
    height: 12
    radius: 2
    x:238
    y:92
    color: "black"
    Text {
        anchors.fill:parent
        id: myText
        font.family: "Helvetica"
        font.pointSize: 10
        font.weight: font.demibold
        color: "white"
        text:  qsTr("+")
        verticalAlignment: Text.AlignVCenter

    }
}
GameButton{
    id:y1


    text:x1.num - 5
    height:17
    width:17
    y:90
    x:252

}


            GameButton{
                id:right
                onClicked:{

                    res.enabled=false
                    right.enabled=false
                    left.enabled=false
                       }






                text:ok.r1 -3
                width: 20
                height:20
                y:110
                x:260
                enabled: true;
            }




        GameButton{
            id:res

                      onClicked: {

            res.enabled=false
            right.enabled=false
            left.enabled=false
            score.points++


}


                      text:ok.r1
                      width: 20
                      height:20
                      x:233
                      y:110
                      enabled: true;
                  }
        GameButton{
            id:left
            onClicked: {

  res.enabled=false
  right.enabled=false
  left.enabled=false


}


                      text:ok.r1 + 3
                      width: 20
                      height:20
                      x:205
                      y:110
                      enabled: true;
                  }
        Item {


            property int r1: x1.num + x1.num -5
            property int r2: x1.num + 3



            id: ok


        GameButton{
            id: okk
        onClicked: {
            x1.num=utils.generateRandomValueBetween(10,20);
            var tmp = res.x
                        res.x = right.x
                        right.x = tmp
            var tmp2 = res2.x
                        res2.x = left2.x
                        left2.x = tmp2
            var tmp3 = res3.x
                        res3.x = left3.x
                        left3.x = tmp3
            res.enabled=true
            left.enabled=true
            right.enabled=true
            res2.enabled=true
            left2.enabled=true
            middle.enabled=true
            left3.enabled=true
            middle3.enabled=true
            res3.enabled=true
            score.points=0
           }



                      text:"Play again"

                      width: 75
                      height:22
                      x:300
                      y:235

                  }




}
        GameButton{
            id:x2
            height:17
            width:17
            property int x11: x1.num * 2
            text:x11

            y:140
            x:215

        }
        Rectangle {
            width: 10
            border.width: 1
            height: 12
            radius: 2
            x:238
            y:142
            color: "black"
            Text {
                anchors.fill:parent
                id: myyText
                font.family: "Helvetica"
                font.pointSize: 10
                font.weight: font.demibold
                color: "white"
                text:  qsTr("-")
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
            }
        }
        GameButton{
            id:y2

            property int y22:x1.num - 3
            text:y22
            height:17
            width:17
            y:140
            x:252

        }




        GameButton{
            id:res2
                      onClicked:{
                      res2.enabled=false
                      middle.enabled=false
                      left2.enabled=false
                          score.points++

}
                      text:ok.r2
                      width: 20
                      height:20
                      x:260
                      y:160
                      enabled: true;

                  }
        GameButton{
            id:middle
            onClicked:{
            res2.enabled=false
            middle.enabled=false
            left2.enabled=false
}

                      text:ok.r2 - 5
                      width: 20
                      height:20
                      x:233
                      y:160
                      enabled: true;

                  }
        GameButton{
            id:left2

                          onClicked:{
                          res2.enabled=false
                          middle.enabled=false
                          left2.enabled=false
    }

                      text:ok.r2 + 5
                      width: 20
                      height:20
                      x:205
                      y:160
                      enabled: true;

                  }
        //................................

        GameButton{
            id:x3
            height:17
            width:17
            property int x11: x1.num - 7
            text:x11

            y:188
            x:215

        }
        Rectangle {
            width: 10
            border.width: 1
            height: 12
            radius: 2
            x:238
            y:190
            color: "black"
            Text {
                anchors.fill:parent
                id: myyyText
                font.family: "Helvetica"
                font.pointSize: 10
                font.weight: font.demibold
                color: "white"
                text:  qsTr("×")
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
            }
        }
        GameButton{
            id:y3

            property int y22:x1.num - 7
            text:y22
            height:17
            width:17
            y:188
            x:252
            enabled: true
        }
//**********************************
        GameButton{
            id:res3
                      onClicked:{
                      res3.enabled=false
                      middle3.enabled=false
                      left3.enabled=false
                          score.points++

}
                      text: x3.x11 * y3.y22
                      width: 20
                      height:20
                      x:260
                      y:207
                      enabled: true;

                  }
        GameButton{
            id:middle3
            onClicked:{
            res3.enabled=false
            middle3.enabled=false
            left3.enabled=false
}

                      text:(x3.x11 * y3.y22) + 6
                      width: 20
                      height:20
                      x:233
                      y:207
                      enabled: true;

                  }
        GameButton{
            id:left3

                          onClicked:{
                          res3.enabled=false
                          middle3.enabled=false
                          left3.enabled=false
    }

                      text:(x3.x11 * y3.y22) + 12
                      width: 20
                      height:20
                      x:205
                      y:207
                      enabled: true;

                  }



        GameButton{
            id:sign
            enabled: false;
            width: 50
            height:20
            property int points

            text:"score"
            x:150
            y:235



        }
            GameButton{
                id:score
                enabled: false;
                width: 20
                height:20
                property int points
                text:points
                x:200
                y:235

            }







    }


    }


}
