<!DOCTYPE html>
<html lang="en" data-theme="night">
<head>
    <title>Home</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width" />

    <style>
        body {
            background-image: url("img/background.jpg");
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
            background-position: center;
        }
        h1 {
            color: #780000;
            font-size: 110px;
            text-align: center;

        }
        .container {
            display: flex;
            justify-content: center;
        }

        ul {
            display: flex;
            list-style: none;
            position: fixed;
            top: 10px;
            left: 50%;
            transform: translateX(-50%);
        }

        li {
            margin: 0 50px 0 50px;
        }

        a {
            color: black;
            font-size: 20px;
            text-decoration: none;
        }
        a:hover {
            transition: 0.2s;
            opacity: 50%;
        }
        .vertical {
            position: absolute;
            top: 0;
            right: 25px;
            text-align: right;
            font-weight: normal;
            line-height: 1.5;
        }
    </style>
</head>
<body>
<audio autoplay loop>
    <source src="msc/enrique%20iglesias%20-%20subeme%20la%20radio%20(slowed%20%20reverb).mp3" type="audio/mpeg">
</audio>
    <h3 class="vertical">
        Banua
        <br>
        Muca
        <br>
        Sinisterra
    </h3>
    <h1 style="margin: 110px 0 -100px 0">
        AMERICAN
    </h1>
    <h1>
        POLITICS AND VOTING SYSTEM
    </h1>

    <div class="container">
        <ul>
            <li><a href="index.php" style="text-decoration: underline">Home</a></li>
            <li><a href="history.php">History</a></li>
            <li><a href="parties.php">Parties</a></li>
            <li><a href="elections.php">Elections</a></li>
        </ul>
    </div>
</body>
</html>
