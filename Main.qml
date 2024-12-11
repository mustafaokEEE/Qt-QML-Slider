import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 400
    height: 200
    title: "Slider"
          Column {
              anchors.centerIn: parent
              spacing: 20
                Text {
                    id: sliderValue
                    text:"Slider Degeri"
                    font.pixelSize: 40
                    color:"darkblue"
                }
            Slider {
                id:sliderName
                width: 300
                from:0
                to:500
                stepSize: 50
                value:10
                onValueChanged: {
                    sliderValue.text = "Slider Degeri: " + Math.round(value)
                }
            }
            Button {
                width: 100
                height: 30
                text:"Degeri 50 yap"
                onClicked: {
                    sliderName.value = 50;
                }
            }



          }


}
