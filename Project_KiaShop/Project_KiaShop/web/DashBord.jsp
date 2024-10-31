<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Customer Statistics</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <!-- Thêm thư viện Chart.js -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.js"></script>
    </head>
    <body>
        <div>
            <div class="row">
                <div class="col-md-12">
                    <div class="overview-wrap">
                        <h2 class="title-1"><a href="ShopControl?showAllProducts=true">Shop</a> / Customer Statistics</h2>
                    </div>
                </div>
            </div>
            <form action="CustomerStatisticsServlet" method="get">
                <label for="datePicker">Choose date:</label>
                <input value="<%= request.getAttribute("selectedDate")%>" type="date" id="datePicker" name="selectedDate">
                <button type="submit">Show Statistics</button>
            </form>
        </div>

        <div class="container">

            <div class="col-md-8">
                <!-- Thẻ canvas để vẽ biểu đồ -->
                <canvas id="customerChart"></canvas>
            </div>
            <div class="col-md-4">
                <!-- Thẻ canvas để vẽ biểu đồ -->
                <canvas id="customerChart1"></canvas> 
            </div>
        </div>

        <script>
            // Hàm này sẽ được gọi sau khi trang được tải hoàn thành
            document.addEventListener("DOMContentLoaded", function () {
                // Lấy thẻ canvas để vẽ biểu đồ
                var ctx = document.getElementById('customerChart').getContext('2d');

                // Dữ liệu biểu đồ sẽ được cung cấp từ servlet
                // Trong ví dụ này, chúng ta sẽ giả định dữ liệu đã được lấy từ servlet và lưu trữ trong một biến data
                var data = {
                    labels: ['Day', 'Month', 'Year'],
                    datasets: [{
                            label: 'Total Customers',
                            data: [<%= request.getAttribute("totalCustomersToday")%>,
            <%= request.getAttribute("totalCustomersThisMonth") %>,
            <%= request.getAttribute("totalCustomersThisYear") %>],
                            backgroundColor: [
                                'rgba(255, 99, 132, 0.2)',
                                'rgba(54, 162, 235, 0.2)',
                                'rgba(255, 206, 86, 0.2)'
                            ],
                            borderColor: [
                                'rgba(255, 99, 132, 1)',
                                'rgba(54, 162, 235, 1)',
                                'rgba(255, 206, 86, 1)'
                            ],
                            borderWidth: 1
                        }, {
                            label: 'New Customers',
                            data: [<%= request.getAttribute("newCustomersToday") %>,
            <%= request.getAttribute("newCustomersThisMonth") %>,
            <%= request.getAttribute("newCustomersThisYear") %>],
                            backgroundColor: [
                                'rgba(153, 102, 255, 0.2)',
                                'rgba(255, 159, 64, 0.2)',
                                'rgba(75, 192, 192, 0.2)'
                            ],
                            borderColor: [
                                'rgba(153, 102, 255, 1)',
                                'rgba(255, 159, 64, 1)',
                                'rgba(75, 192, 192, 1)'
                            ],
                            borderWidth: 1
                        }]
                };

                // Khởi tạo biểu đồ
                var customerChart = new Chart(ctx, {
                    type: 'bar',
                    data: data,
                    options: {
                        scales: {
                            yAxes: [{
                                    ticks: {
                                        beginAtZero: true
                                    }
                                }]
                        }
                    }
                });
            });
            // Hàm này sẽ được gọi sau khi trang được tải hoàn thành
            document.addEventListener("DOMContentLoaded", function () {
                // Lấy thẻ canvas để vẽ biểu đồ
                var ctx = document.getElementById('customerChart').getContext('2d');

                // Dữ liệu biểu đồ sẽ được cung cấp từ servlet
                // Trong ví dụ này, chúng ta sẽ giả định dữ liệu đã được lấy từ servlet và lưu trữ trong một biến data
                var data = {
                    labels: ['Day', 'Month', 'Year'],
                    datasets: [{
                            label: 'Total Customers',
                            data: [<%= request.getAttribute("totalCustomersToday")%>,
            <%= request.getAttribute("totalCustomersThisMonth") %>,
            <%= request.getAttribute("totalCustomersThisYear") %>],
                            backgroundColor: [
                                'rgba(255, 99, 132, 0.2)',
                                'rgba(54, 162, 235, 0.2)',
                                'rgba(255, 206, 86, 0.2)'
                            ],
                            borderColor: [
                                'rgba(255, 99, 132, 1)',
                                'rgba(54, 162, 235, 1)',
                                'rgba(255, 206, 86, 1)'
                            ],
                            borderWidth: 1
                        }, {
                            label: 'New Customers',
                            data: [<%= request.getAttribute("newCustomersToday") %>,
            <%= request.getAttribute("newCustomersThisMonth") %>,
            <%= request.getAttribute("newCustomersThisYear") %>],
                            backgroundColor: [
                                'rgba(153, 102, 255, 0.2)',
                                'rgba(255, 159, 64, 0.2)',
                                'rgba(75, 192, 192, 0.2)'
                            ],
                            borderColor: [
                                'rgba(153, 102, 255, 1)',
                                'rgba(255, 159, 64, 1)',
                                'rgba(75, 192, 192, 1)'
                            ],
                            borderWidth: 1
                        }]
                };

                // Khởi tạo biểu đồ
                var customerChart1 = new Chart(ctx, {
                    type: 'bar',
                    data: data,
                    options: {
                        scales: {
                            yAxes: [{
                                    ticks: {
                                        beginAtZero: true
                                    }
                                }]
                        }
                    }
                });
            });
        </script>
    </body>
</html>