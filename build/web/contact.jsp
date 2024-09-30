<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #f8f9fa;
        }

        .box {
            background-color: teal !important;
            color: #ffffff;
            width: 100%;
            max-width: 600px;
        }

        .btn-teal {
            background-color: teal;
            color: #ffffff;
            border: none;
        }

        .btn-teal:hover {
            background-color: darkcyan;
        }

        .text-white {
            color: #ffffff;
        }
    </style>
</head>
<body>
    <%--<%@include file="normal_navbar.jsp" %>--%> 

    <div class="container">
        <div class="box p-4 rounded">
            <h1 class="text-white mb-4 text-center">Contact Us</h1>
            <form id="contactForm">
                <div class="form-group">
                    <label for="name" class="text-white">Name</label>
                    <input type="text" class="form-control" id="name" name="name" required>
                </div>
                <div class="form-group">
                    <label for="email" class="text-white">Email</label>
                    <input type="email" class="form-control" id="email" name="email" required>
                </div>
                <div class="form-group">
                    <label for="message" class="text-white">Message</label>
                    <textarea class="form-control" id="message" name="message" rows="4" required></textarea>
                </div>
                <button type="submit" class="btn btn-teal">Send</button>
            </form>
            <div id="responseMessage" class="mt-3 text-white"></div>
            <a href="index.html" class="btn btn-teal mt-3">Go Back to Home</a>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
        document.getElementById('contactForm').addEventListener('submit', function (event) {
            event.preventDefault(); // Prevent the default form submission

            // Get form values
            const name = document.getElementById('name').value;
            const email = document.getElementById('email').value;
            const message = document.getElementById('message').value;

            // Simple validation (can be more complex)
            if (name && email && message) {
                document.getElementById('responseMessage').innerText = 'Thank you for your message!';
                // Here you would typically send the data to a server or email service
                // For example, using fetch to POST data to a server endpoint
                // fetch('/submit', { method: 'POST', body: JSON.stringify({ name, email, message }) });
            } else {
                document.getElementById('responseMessage').innerText = 'Please fill in all fields.';
            }

            // Clear the form
            document.getElementById('contactForm').reset();
        });
    </script>
</body>
</html>
