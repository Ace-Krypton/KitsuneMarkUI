import QtQuick
import QtQuick.Window
import QtQuick.Layouts
import QtQuick.Controls

ApplicationWindow {
  id: window
  width: 1221
  height: 674
  visible: true
  title: qsTr("Kitsune Specs")

  flags: Qt.Window | Qt.WindowFixedSize
  property var result: ""

  menuBar: MenuBar {
    spacing: 15

    Menu {
      title: qsTr("File")

      Action {
        text: qsTr("New...")
      }

      Action {
        text: qsTr("Open...")
      }

      Action {
        text: qsTr("Save")
      }

      Action {
        text: qsTr("Save As...")
      }

      MenuSeparator {}

      Action {
        text: qsTr("Quit")
      }
    }

    Menu {
      title: qsTr("Settings")

      Action {
        text: qsTr("Cut")
      }

      Action {
        text: qsTr("Copy")
      }

      Action {
        text: qsTr("Paste")
      }
    }

    Menu {
      title: qsTr("Profile")
    }

    Menu {
      title: qsTr("Theme")
    }

    Menu {
      title: qsTr("Help")

      Action {
        text: qsTr("About")
      }

      Action {
        text: qsTr("Language")
      }
    }
  }

  Rectangle {
    anchors.fill: parent
    color: "white"

    ColumnLayout {
      anchors.fill: parent

      Item {
        Layout.fillWidth: true
        Layout.fillHeight: true

        Image {
          anchors.fill: parent
          source: "file:///home/draco/Downloads/back.jpg"
        }

        Rectangle {
          id: mainFrame
          x: 450
          y: 15
          width: window.width - 470
          height: window.height - 50

          ColumnLayout {
            spacing: 10

            RowLayout {
              spacing: 10

              Rectangle {
                width: 150
                height: 100

                Button {
                  id: testAllButton
                  anchors.fill: parent

                  Text {
                    anchors.fill: parent
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    text: qsTr("ALL")
                    font.bold: true
                    font.pointSize: 20
                  }
                }
              }

              ColumnLayout {
                Rectangle {
                  width: window.width - 630
                  height: 46

                  RowLayout {
                    Rectangle {
                      border.color: "#ABABAB"
                      width: 50
                      height: 50

                      ComboBox {
                        id: combo
                        anchors.centerIn: parent
                        width: 50
                        height: 50

                        model: ListModel {
                          ListElement {
                            text: qsTr("1")
                          }

                          ListElement {
                            text: qsTr("2")
                          }

                          ListElement {
                            text: qsTr("3")
                          }

                          ListElement {
                            text: qsTr("4")
                          }

                          ListElement {
                            text: qsTr("5")
                          }
                        }

                        contentItem: Rectangle {
                          implicitWidth: combo.width
                          implicitHeight: 10
                          border.color: "#ABABAB"

                          Text {
                            text: combo.currentText
                            font.pointSize: 20
                            anchors.centerIn: parent
                          }
                        }

                        indicator: Item {
                          width: 0
                          height: 0
                        }
                      }
                    }

                    Rectangle {
                      border.color: "#ABABAB"
                      width: 134
                      height: 50

                      ComboBox {
                        id: comboGiB
                        anchors.centerIn: parent
                        width: 134
                        height: 50

                        model: ListModel {
                          ListElement {
                            text: qsTr("1 GiB")
                          }

                          ListElement {
                            text: qsTr("2 GiB")
                          }

                          ListElement {
                            text: qsTr("3 GiB")
                          }

                          ListElement {
                            text: qsTr("4 GiB")
                          }

                          ListElement {
                            text: qsTr("5 GiB")
                          }
                        }

                        contentItem: Rectangle {
                          implicitWidth: comboGiB.width
                          implicitHeight: 10
                          border.color: "#ABABAB"

                          Text {
                            text: comboGiB.currentText
                            anchors.fill: parent
                            anchors.leftMargin: 5
                            horizontalAlignment: Text.AlignLeft
                            verticalAlignment: Text.AlignVCenter
                            font.pointSize: 20
                          }
                        }

                        indicator: Item {
                          width: 0
                          height: 0
                        }
                      }
                    }

                    Rectangle {
                      border.color: "#ABABAB"
                      width: 280
                      height: 50

                      ComboBox {
                        id: comboStorage
                        anchors.centerIn: parent
                        width: 280
                        height: 50

                        model: ListModel {
                          ListElement {
                            text: qsTr("S: 0% (0/931GiB)")
                          }

                          ListElement {
                            text: qsTr("D: 0% (0/486GiB)")
                          }
                        }

                        contentItem: Rectangle {
                          implicitWidth: comboStorage.width
                          implicitHeight: 10
                          border.color: "#ABABAB"

                          Text {
                            text: comboStorage.currentText
                            anchors.fill: parent
                            anchors.leftMargin: 5
                            horizontalAlignment: Text.AlignLeft
                            verticalAlignment: Text.AlignVCenter
                            font.pointSize: 20
                          }
                        }

                        indicator: Item {
                          width: 0
                          height: 0
                        }
                      }
                    }

                    Rectangle {
                      border.color: "#ABABAB"
                      width: 110
                      height: 50

                      ComboBox {
                        id: comboMB
                        anchors.centerIn: parent
                        width: 110
                        height: 50

                        model: ListModel {
                          ListElement {
                            text: qsTr("MB/s")
                          }

                          ListElement {
                            text: qsTr("MiB/s")
                          }
                        }

                        contentItem: Rectangle {
                          implicitWidth: comboMB.width
                          implicitHeight: 10
                          border.color: "#ABABAB"

                          Text {
                            text: comboMB.currentText
                            anchors.fill: parent
                            anchors.leftMargin: 5
                            horizontalAlignment: Text.AlignLeft
                            verticalAlignment: Text.AlignVCenter
                            font.pointSize: 20
                          }
                        }

                        indicator: Item {
                          width: 0
                          height: 0
                        }
                      }
                    }
                  }
                }

                Rectangle {
                  width: window.width - 630
                  height: 46

                  RowLayout {
                    Rectangle {
                      width: (window.width - 630) / 2 - 3
                      height: 46

                      Text {
                        id: readMB
                        anchors.fill: parent
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignBottom
                        text: qsTr("Read (MB/s)")
                        font.bold: true
                        font.pointSize: 20
                      }
                    }

                    Rectangle {
                      width: (window.width - 630) / 2 - 3
                      height: 46

                      Text {
                        id: writeMB
                        anchors.fill: parent
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignBottom
                        text: qsTr("Write (MB/s)")
                        font.bold: true
                        font.pointSize: 20
                      }
                    }
                  }
                }
              }
            }

            RowLayout {
              spacing: 10

              Rectangle {
                width: 150
                height: 100

                Button {
                  id: seq1M
                  anchors.fill: parent

                  Text {
                    anchors.fill: parent
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    textFormat: Text.RichText
                    text: qsTr("SEQ1M<br>Q8T1")
                    font.bold: true
                    font.pointSize: 20
                  }

                  onClicked: {
                    var options = "--randrepeat=1 --ioengine=libaio --direct=1 "
                        + "--name=test --filename=test --bs=1M --size=1G "
                        + "--readwrite=read --ramp_time=4 --numjobs=5"

                    benchmark.start(options)
                    benchmark.stop()

                    window.result = benchmark.extract_bandwidth(
                          benchmark.get_results())
                  }
                }
              }

              RowLayout {
                Rectangle {
                  border.color: "#ABABAB"
                  width: (window.width - 630) / 2 - 3
                  height: 100

                  Text {
                    anchors.fill: parent
                    anchors.rightMargin: 10
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                    text: qsTr(window.result)
                    font.bold: true
                    font.pointSize: 40
                  }
                }

                Rectangle {
                  border.color: "#ABABAB"
                  width: (window.width - 630) / 2 - 3
                  height: 100

                  Text {
                    anchors.fill: parent
                    anchors.rightMargin: 10
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                    text: qsTr("4952.16")
                    font.bold: true
                    font.pointSize: 40
                  }
                }
              }
            }

            RowLayout {
              spacing: 10

              Rectangle {
                width: 150
                height: 100

                Button {
                  id: seq1MT1
                  anchors.fill: parent

                  Text {
                    anchors.fill: parent
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    textFormat: Text.RichText
                    text: qsTr("SEQ1M<br>Q1T1")
                    font.bold: true
                    font.pointSize: 20
                  }
                }
              }

              RowLayout {
                Rectangle {
                  border.color: "#ABABAB"
                  width: (window.width - 630) / 2 - 3
                  height: 100

                  Text {
                    anchors.fill: parent
                    anchors.rightMargin: 10
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                    text: qsTr("7126.02")
                    font.bold: true
                    font.pointSize: 40
                  }
                }

                Rectangle {
                  border.color: "#ABABAB"
                  width: (window.width - 630) / 2 - 3
                  height: 100

                  Text {
                    anchors.fill: parent
                    anchors.rightMargin: 10
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                    text: qsTr("5238.12")
                    font.bold: true
                    font.pointSize: 40
                  }
                }
              }
            }

            RowLayout {
              spacing: 10

              Rectangle {
                width: 150
                height: 100

                Button {
                  id: rnd4K
                  anchors.fill: parent

                  Text {
                    anchors.fill: parent
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    textFormat: Text.RichText
                    text: qsTr("RND4K<br>Q32T16")
                    font.bold: true
                    font.pointSize: 20
                  }
                }
              }

              RowLayout {
                Rectangle {
                  border.color: "#ABABAB"
                  width: (window.width - 630) / 2 - 3
                  height: 100

                  Text {
                    anchors.fill: parent
                    anchors.rightMargin: 10
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                    text: qsTr("4194.95")
                    font.bold: true
                    font.pointSize: 40
                  }
                }

                Rectangle {
                  border.color: "#ABABAB"
                  width: (window.width - 630) / 2 - 3
                  height: 100

                  Text {
                    anchors.fill: parent
                    anchors.rightMargin: 10
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                    text: qsTr("4380.31")
                    font.bold: true
                    font.pointSize: 40
                  }
                }
              }
            }

            RowLayout {
              spacing: 10

              Rectangle {
                width: 150
                height: 100

                Button {
                  id: rnd4KQ1T1
                  anchors.fill: parent

                  Text {
                    anchors.fill: parent
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    textFormat: Text.RichText
                    text: qsTr("RND4K<br>Q1T1")
                    font.bold: true
                    font.pointSize: 20
                  }
                }
              }

              RowLayout {
                Rectangle {
                  border.color: "#ABABAB"
                  width: (window.width - 630) / 2 - 3
                  height: 100

                  Text {
                    anchors.fill: parent
                    anchors.rightMargin: 10
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                    text: qsTr("91.04")
                    font.bold: true
                    font.pointSize: 40
                  }
                }

                Rectangle {
                  border.color: "#ABABAB"
                  width: (window.width - 630) / 2 - 3
                  height: 100

                  Text {
                    anchors.fill: parent
                    anchors.rightMargin: 10
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                    font.bold: true
                    text: qsTr("225.37")
                    font.pointSize: 40
                  }
                }
              }
            }

            Rectangle {
              border.color: "#ABABAB"
              width: window.width - 470
              height: 74

              Text {
                anchors.fill: parent
                anchors.leftMargin: 10
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                text: qsTr("Samsung SSD 980 PRO 1TB / AMD Ryzen 9 5950X")
                font.bold: true
                font.pointSize: 20
              }
            }
          }
        }
      }
    }
  }
}
