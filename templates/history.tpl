<!DOCTYPE html>
<html lang="en" data-theme="night">
<head>
    <title>Home</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width" />

    <style>
        body {
            background-image: url("img/history.jpg");
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
            top: 100px;
            left: 100px;
            width: 40%;
        }

        .right {
            position: absolute;
            top: 100px;
            right: 100px;
            width: 30%;
        }

        td {
            font-size: 20px;
            padding-bottom: 50px;
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
    <source src="msc/don%20omar,%20danza%20kuduro%20(slowed%20+%20reverb).mp3" type="audio/mpeg">
</audio>
<h3 class="vertical">
    Banua
    <br>
    Muca
    <br>
    Sinisterra
</h3>
<div class="left">
    <p>
        America, also known as the United States of America, has a rich history that dates back to the arrival of Native
        Americans thousands of years ago. It became a country on July 4, 1776, with the Declaration of Independence. The
        USA is located in North America, bordered by Canada to the north, Mexico to the south, the Atlantic Ocean to the
        east, and the Pacific Ocean to the west
    </p>
    <br>
    <p>1776 - Declaration of Independence</p>
    <p style="margin: -40px 0 -40px 20px">|</p>
    <p>1861 - Civil War</p>
    <p style="margin: -40px 0 -40px 20px">|</p>
    <p>1920 - Women gain the right to vote</p>
    <p style="margin: -40px 0 -40px 20px">|</p>
    <p>1964 - Civil Rights Act signed into law</p>
</div>

<div class="right">
    <h2>Most important presidents</h2>
    <table>
        <tr>
            <td><img src="https://upload.wikimedia.org/wikipedia/commons/b/b6/Gilbert_Stuart_Williamstown_Portrait_of_George_Washington.jpg" alt="" width="75px"></td>
            <td>George Washington</td>
            <td style="text-align: right">The first president and a founding father of the country</td>
        </tr>
        <tr>
            <td><img src="https://upload.wikimedia.org/wikipedia/commons/a/ab/Abraham_Lincoln_O-77_matte_collodion_print.jpg" alt="" width="75px"></td>
            <td>Abraham Lincoln</td>
            <td style="text-align: right">Led the nation during the Civil War and abolished slavery</td>
        </tr>
        <tr>
            <td><img src="https://upload.wikimedia.org/wikipedia/commons/4/42/FDR_1944_Color_Portrait.jpg" alt="" width="75px"></td>
            <td>Franklin D. Roosevelt</td>
            <td style="text-align: right">The longest-serving president, led the country during the Great Depression and World War II</td>
        </tr>
        <tr>
            <td><img src="https://upload.wikimedia.org/wikipedia/commons/c/c3/John_F._Kennedy%2C_White_House_color_photo_portrait.jpg" alt="" width="75px"></td>
            <td>John F. Kennedy</td>
            <td style="text-align: right">Known for his civil rights advocacy and the Apollo moon landing initiative</td>
        </tr>
    </table>
</div>

<div class="container">
    <ul>
        <li><a href="index.php">Home</a></li>
        <li><a href="history.php" style="text-decoration: underline">History</a></li>
        <li><a href="parties.php">Parties</a></li>
        <li><a href="elections.php">Elections</a></li>
    </ul>
</div>
</body>
</html>
