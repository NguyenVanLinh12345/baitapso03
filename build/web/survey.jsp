<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Survey</title>
        <link rel="stylesheet" href="styles/main.css">
    </head>

    <body>
        <div>
            <h1>Thanks for taking our survery!</h1>
            <p>Here is the information that you entered:</p>
            <span class="description">Email:</span>
            <p class="content">${user.email}</p>
            <span class="description">First Name:</span>
            <p class="content">${user.firstName}</p>
            <span class="description">Last Name</span>
            <p class="content">${user.lastName}</p>

            <span class="description">Heard Form:</span><br/>   
            <c:forEach var="item" items="${user.heardFrom}">
                <p class="margin_left">${item}</p>
            </c:forEach>
            <div>
                <span class="description">Updates:</span>
                <p class="content">${user.wantsUpdates}</p>
            </div>

            <c:if test="${user.getWantsUpdates() == 'Yes'}">
                <span class="description">Contact Via:</span>
                <p class="content">${user.contactVia}</p>
            </c:if>

        </div>
    </body>

</html>