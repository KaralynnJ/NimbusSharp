<%@ Page Title="Analytics" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Analytics.aspx.cs" Inherits="NimbusSharp.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        google.charts.load('current');
        google.charts.setOnLoadCallback(drawVisualization);

        //chart drawing functions
        function drawVisualization() {
            var chart = new google.visualization.ChartWrapper({
                chartType: 'PieChart',
                dataTable: [
                    ['Year', 'Sales', 'Expenses', 'Profit'],
                    ['2014', 1000, 400, 200],
                    ['2015', 1170, 460, 250],
                    ['2016', 660, 1120, 300],
                    ['2017', 1030, 540, 350]
                ],
                containerId: 'chart_div'
            });

            var pieButton = document.getElementById('pie_button');
            var barsButton = document.getElementById('bar_button');
            var lineButton = document.getElementById('line_button');

            var chartTitle = document.getElementById('chart_title');

            function drawBars() {
                barsButton.classList.add("active");
                pieButton.classList.remove("active");
                lineButton.classList.remove("active");
                chartTitle.innerHTML = "Bar Chart"
                chart.setChartType('ColumnChart');
                chart.draw();
            }

            function drawLine() {
                lineButton.classList.add("active");
                pieButton.classList.remove("active");
                barsButton.classList.remove("active");
                chartTitle.innerHTML = "Line Chart"
                chart.setChartType('LineChart');
                chart.draw();
            }

            function drawPie() {
                pieButton.classList.add("active");
                barsButton.classList.remove("active");
                lineButton.classList.remove("active");
                chartTitle.innerHTML = "Pie Chart"
                chart.setChartType('PieChart');
                chart.draw();
            }

            barsButton.onclick = function () {
                drawBars();
            }

            lineButton.onclick = function () {
                drawLine();
            }

            pieButton.onclick = function () {
                drawPie();
            }

            drawPie();


        }

        $(window).resize(function () {
            drawPie();
        });


    </script>

    <!-- Charting Container -->
    <div id="chart_container" class="container push-down">
        <div class="row justify-content-center">
            <div class="col">
                <div class="tab">
                    <button type="button" class="tablinks active" id="pie_button"><i class="fas fa-chart-pie"></i></button>
                    <button type="button" class="tablinks" id="bar_button"><i class="fas fa-chart-bar"></i></button>
                    <button type="button" class="tablinks" id="line_button"><i class="fas fa-chart-line"></i></button>
                </div>
                <div id="tab_content" class="tabcontent">
                    <h5 id="chart_title">Pie Chart</h5>
                    <!--Div that will hold the pie chart-->
                    <div id="chart_div"></div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
