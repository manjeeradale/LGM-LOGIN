<!DOCTYPE html>
<html>
<head>
  <title>Registration Form</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      text-align: center;
      background-color: #f5f5f5;
      padding: 20px;
    }

    h1 {
      color: #333;
    }

    .form-container {
      margin: 20px auto;
      width: 400px;
      background-color: #fff;
      padding: 20px;
      border-radius: 5px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    .form-container label {
      display: block;
      margin-bottom: 10px;
      text-align: left;
      font-weight: bold;
    }

    .form-container input {
      width: 100%;
      padding: 10px;
      margin-bottom: 20px;
      border-radius: 5px;
      border: 1px solid #ccc;
    }

    button {
      padding: 10px 20px;
      background-color: #4CAF50;
      color: white;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }

    button:hover {
      background-color: #45a049;
    }

    #display-container {
      margin-top: 40px;
      text-align: left;
      max-width: 400px;
      margin-left: auto;
      margin-right: auto;
      padding: 20px;
      background-color: #fff;
      border-radius: 5px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }
  </style>
</head>
<body>
  <h1>Registration Form</h1>
  <div class="form-container">
    <label for="name">Name:</label>
    <input type="text" id="name" placeholder="Enter your name">

    <label for="email">Email:</label>
    <input type="email" id="email" placeholder="Enter your email">

    <label for="password">Password:</label>
    <input type="password" id="password" placeholder="Enter your password">

    <button id="submit-btn">Submit</button>
  </div>

  <div id="display-container"></div>

  <script>
    document.addEventListener('DOMContentLoaded', function() {
      const submitBtn = document.getElementById('submit-btn');
      const displayContainer = document.getElementById('display-container');

      submitBtn.addEventListener('click', function() {
        const name = document.getElementById('name').value.trim();
        const email = document.getElementById('email').value.trim();
        const password = document.getElementById('password').value.trim();

        if (name !== '' && email !== '' && password !== '') {
          const data = {
            name: name,
            email: email,
            password: password
          };

          const dataString = JSON.stringify(data);
          displayContainer.textContent = dataString;
        }
      });
    });
  </script>
</body>
</html>
