<!DOCTYPE html>
<%@ page import="java.util.*, com.example.entity.*" %>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>History</title>
        <link href="./css/bootstrap.css" rel="stylesheet">
    </head>

    <body>
            
        <div class="container">
            <hr />
            <div>
                Money-Transfer-System
            </div>
            <hr />

            <ul class="nav nav-pills">
                <li class="nav-item"><a class="nav-link" href="transfer.html">Transfer Money</a></li>
                <li class="nav-item"><a class="nav-link" href="history.jsp">Transaction History</a></li>
            </ul>

  

            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Transaction ID</th>
                        <th>Account</th>
                        <th>Amount</th>
                        <th>Date</th>
                        <th>Type</th>
                    </tr>
                </thead>
                <tbody>
           
           			<%  List<Txn> transactions= (ArrayList<Txn>) request.getAttribute("txns");  %>
                
                    <% for(Txn transaction : transactions){ %>
                        <tr>
                            <td><%=transaction.getTransaction_id()%></td>
                            <td><%=transaction.getAccount()%></td>
                            <td><%=transaction.getAmount()%></td>
                            <td><%=transaction.getDate()%></td>
                            <td><%=transaction.getType()%></td>
                        </tr>
                    <% } %>
                </tbody>
            </table>

        </div>

    </body>

    </html>