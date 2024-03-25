<!DOCTYPE html>
<html lang="en" data-theme="night">
<head>
    <title>Home</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width" />

    <style>
        body {
            background-image: url("img/parties.jpg");
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
            color: #780000;
            font-size: 20px;
            text-decoration: none;
        }
        a:hover {
            transition: 0.2s;
            opacity: 50%;
        }

        p {
            font-size: 25px;
            line-height: 2;
        }

        .left {
            position: absolute;
            top: 200px;
            left: 150px;
            width: 40%;
        }

        .right {
            position: absolute;
            top: 200px;
            right: 150px;
            width: 40%;
        }

        .bottom {
            color: #780000;
            position: absolute;
            bottom: 40px;
            width: 70%;
            text-align: center;
            left: 50%;
            transform: translateX(-50%);
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
    <source src="msc/Enrique%20Iglesias%20-%20Bailando%20ft.%20Descemer%20Bueno,%20Gente%20De%20Zona%20(slowed%20+%20reverb).mp3" type="audio/mpeg">
</audio>

<h3 class="vertical">
    Banua
    <br>
    Muca
    <br>
    Sinisterra
</h3>

<div class="left">
    <h2>Democratic Party</h2>
    <p>
        The Democratic Party, founded in 1828, is the world's oldest active
        political party. It is considered center-left, advocating for social
        equality and environmental protection
    </p>
</div>

<div class="right">
    <h2>Republican Party</h2>
    <p>
        Founded in 1854, the Republican Party, also known as the GOP (Grand Old
        Party), is one of the two major political parties in the United States.
        It is generally considered center-right, particularly on economic
        issues
    </p>
</div>

<div class="bottom">
    <h2>Third Parties</h2>
    <p>
        In addition to the two major parties, there are several third parties,
        which include the Libertarian Party, the Green Party, and others. These
        parties often focus on specific issues that they feel are not adequately
        addressed by the major parties
    </p>
</div>

<div class="container">
    <ul>
        <li><a href="index.php">Home</a></li>
        <li><a href="history.php" >History</a></li>
        <li><a href="parties.php" style="text-decoration: underline">Parties</a></li>
        <li><a href="elections.php">Elections</a></li>
    </ul>
</div>
</body>
</html>
