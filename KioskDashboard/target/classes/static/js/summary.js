
/*Makes the AJAX calll (synchronous) to load a Summary Data*/
    loadSummaryData: function() {
    var responseArray = [];
        $.ajax({

          async: false,
          url: "StudentJsonDataServlet",
          success: function(studentJsonData) {
            console.log(studentJsonData);
             $.each(studentJsonData,function(index,aStudent){

                  responseArray.push([12,10,8],[20,18,15]);

           });

          }

        });

       return responseArray;
    },

    var highSatisfaction = {
      label: 'High Satisfaction',
      data: [10, 12],
      backgroundColor: 'rgba(0, 99, 132, 0.6)',
      borderColor: 'rgba(0, 99, 132, 1)',
      yAxisID: "y-axis-hs"
    };

    var mediumSatisfaction = {
      label: 'Medium Satsfaction',
      data: [13, 14],
      backgroundColor: 'rgba(99, 132, 0, 0.6)',
      borderColor: 'rgba(99, 132, 0, 1)',
      yAxisID: "y-axis-ms"
    };

    var lowSatisfaction = {
     label: 'Low Satsfaction',
     data: [3, 2],
     backgroundColor: 'rgba(99, 132, 0, 0.6)',
     borderColor: 'rgba(99, 132, 0, 1)',
     yAxisID: "y-axis-ls"
    };

    var feedbackData = {
      labels: ["c1", "c2"],
      datasets: [highSatisfaction, mediumSatisfaction,lowSatisfaction]
    };

    var chartOptions = {
      scales: {
        xAxes: [{
          barPercentage: 1,
          categoryPercentage: 0.6
        }],
        yAxes: [{
          id: "y-axis-hs"
        }, {
          id: "y-axis-ms"
        },{
          id: "y-axis-ls"
        }]
      }
    };

    var barChart = new Chart(densityCanvas, {
      type: 'bar',
      data: feedbackData,
      options: chartOptions
    });
