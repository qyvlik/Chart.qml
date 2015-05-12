/*!
 * Chart.qml
 * you can look the Chart.js in http://chartjs.org/
 *
 * Copyright 2015 qyvlik
 * Released under the MIT license
 */


import QtQuick 2.0

Chart{
    width: 400
    height: 300
    property int test : 65;
    onPaint: {
        /* //bar
        bar( {
                labels : ["一月","February","March","April","May","June","July"],
                datasets : [
                    {
                        fillColor : "rgba(220,220,220,0.5)",
                        strokeColor : "rgba(220,220,220,1)",
                        data : [test,59,90,81,56,55,40]
                    },
                    {
                        fillColor : "rgba(151,187,205,0.5)",
                        strokeColor : "rgba(151,187,205,1)",
                        data : [28,48,40,19,96,27,100]
                    }
                ]
            });
        //*/ // bar

        /*/ // line
        line({
                 labels : ["January","February","March","April","May","June","July"],
                 datasets : [
                     {
                         fillColor : "rgba(220,220,220,0.5)",
                         strokeColor : "rgba(220,220,220,1)",
                         pointColor : "rgba(220,220,220,1)",
                         pointStrokeColor : "#fff",
                         data : [65,59,90,81,56,55,40]
                     },
                     {
                         fillColor : "rgba(151,187,205,0.5)",
                         strokeColor : "rgba(151,187,205,1)",
                         pointColor : "rgba(151,187,205,1)",
                         pointStrokeColor : "#fff",
                         data : [28,48,40,19,96,27,100]
                     }
                 ]
             });
        //*/ // line

        /*/ // radar
        radar( {
                  labels : ["Eating","Drinking","Sleeping","Designing","Coding","Partying","Running"],
                  datasets : [
                      {
                          fillColor : "rgba(220,220,220,0.5)",
                          strokeColor : "rgba(220,220,220,1)",
                          pointColor : "rgba(220,220,220,1)",
                          pointStrokeColor : "#fff",
                          data : [65,59,90,81,56,55,40]
                      },
                      {
                          fillColor : "rgba(151,187,205,0.5)",
                          strokeColor : "rgba(151,187,205,1)",
                          pointColor : "rgba(151,187,205,1)",
                          pointStrokeColor : "#fff",
                          data : [28,48,40,19,96,27,100]
                      }
                  ]
              });
        //*/ // radar

        /*/ // polarArea
        polarArea([
                      {
                          value : 30,
                          color: "#D97041"
                      },
                      {
                          value : 90,
                          color: "#C7604C"
                      },
                      {
                          value : 24,
                          color: "#21323D"
                      },
                      {
                          value : 58,
                          color: "#9D9B7F"
                      },
                      {
                          value : 82,
                          color: "#7D4F6D"
                      },
                      {
                          value : 8,
                          color: "#584A5E"
                      }
                  ]);
        //*/ // polarArea

        /*/ // pie
        pie([
                {
                    value: 30,
                    color:"#F38630"
                },
                {
                    value : 50,
                    color : "#E0E4CC"
                },
                {
                    value : 100,
                    color : "#69D2E7"
                }
            ]);
        //*/ // pie

        //*/ // doughnut
        doughnut([
                     {
                         value: 30,
                         color:"#F7464A"
                     },
                     {
                         value : 50,
                         color : "#E2EAE9"
                     },
                     {
                         value : 100,
                         color : "#D4CCC5"
                     },
                     {
                         value : 40,
                         color : "#949FB1"
                     },
                     {
                         value : 120,
                         color : "#4D5360"
                     }

                 ]);
        //*/ // doughnut
    }

    Timer{
        id:t
        interval: 100
        repeat: true
        running: true
        onTriggered:{
            test+=1
            requestPaint();
        }
    }
    Component.onCompleted: {
        console.debug("this is the chart.js by qml you can use it just like use the chart.js ",
                      "you can look the Chart.js in http://chartjs.org/");

    }
}

