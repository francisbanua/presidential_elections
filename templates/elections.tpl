<!DOCTYPE html>
<html lang="en" data-theme="night">
<head>
    <title>Home</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width" />
    <script src="mapdata2.js"></script>
    <script src="mapdata2base.js"></script>
    <script src="usmap.js"></script>

    <script>
        const stateSpecificData = mapdata.state_specific;
        Object.assign(simplemaps_usmap_mapdata.state_specific, stateSpecificData);
    </script>

    <style>
        body {
            background-image: url("img/elections.jpg");
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
            background-position: center;
        }
        h1 {
            color: #003049;
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
            color: #003049;
            font-size: 20px;
            text-decoration: none;
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
            width: 40%;
        }

        select {
            background: transparent;
            border: none;
            font-size: 20px;
            margin-right: 10px;
            font-family: "Times New Roman";

        }
        button {
            background: transparent;
            border: none;
            font-size: 20px;
            text-decoration: underline;
            font-family: "Times New Roman";

        }
        button:hover {
            cursor: pointer;
        }

        .form {
            position: absolute;
            left: 50%;
            transform: translateX(-50%);
            width: 100%;
            text-align: center;
        }

        .iMap {
            position: absolute;
            top: 100%;
            left: 50%;
            transform: translateX(-50%);
            width: 100%;
        }
        .podium {
            position: absolute;
            top: 700px;
            width: 100%;
        }
        table {
            width: 100%;
            text-align: left;
            font-size: 20px;
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
    <source src="msc/Pitbull%20-%20Fireball%20ft.%20John%20Ryan.mp3" type="audio/mpeg">
</audio>

<h3 class="vertical">
    Banua
    <br>
    Muca
    <br>
    Sinisterra
</h3>

<div class="left">
    <h2>The Electoral College</h2>
    <p>
        The Electoral College is a body of electors established by the United
        States Constitution, which forms every four years for the sole purpose
        of electing the president and vice president. Each state is allocated a
        number of electors equal to its total number of representatives in
        Congress, and Washington D.C. is allocated three electors
    </p>

    <br>

    <h2>Impact of Electoral College on Elections</h2>
    <p>
        The Electoral College system means that it is possible for a candidate
        to win the national popular vote but lose the election by failing to
        secure a majority of electoral votes. This has happened in five
        presidential elections, most recently in 2016
    </p>
    <div class="iMap" style="max-width: 700px; clip-path: polygon(0% 15%, 0 0, 15% 0%, 85% 0%, 100% 0, 100% 15%, 100% 94%, 60% 94%, 60% 100%, 15% 100%, 0 100%, 0% 85%)">
        <div id="map"></div>
    </div>
</div>

<div class="right">
    <h2>Presidential Elections</h2>
    <p>
        Presidential elections are held every four years, on the first Tuesday
        after the first Monday in November. The candidate who wins the majority
        of electoral votes (270 out of 538) becomes President
    </p>

    <div class="form">
        <h1 style="color: #780000">Choose a year</h1>
        <form action="elections.php" method="post">
            <select name="id">
                <option value="1" <?php if(isset($_POST['id']) && $_POST['id'] == '1') echo 'selected'; ?>>1976</option>
                <option value="2" <?php if(isset($_POST['id']) && $_POST['id'] == '2') echo 'selected'; ?>>1980</option>
                <option value="3" <?php if(isset($_POST['id']) && $_POST['id'] == '3') echo 'selected'; ?>>1984</option>
                <option value="4" <?php if(isset($_POST['id']) && $_POST['id'] == '4') echo 'selected'; ?>>1988</option>
                <option value="5" <?php if(isset($_POST['id']) && $_POST['id'] == '5') echo 'selected'; ?>>1992</option>
                <option value="6" <?php if(isset($_POST['id']) && $_POST['id'] == '6') echo 'selected'; ?>>1996</option>
                <option value="7" <?php if(isset($_POST['id']) && $_POST['id'] == '7') echo 'selected'; ?>>2000</option>
                <option value="8" <?php if(isset($_POST['id']) && $_POST['id'] == '8') echo 'selected'; ?>>2004</option>
                <option value="9" <?php if(isset($_POST['id']) && $_POST['id'] == '9') echo 'selected'; ?>>2008</option>
                <option value="10" <?php if(isset($_POST['id']) && $_POST['id'] == '10') echo 'selected'; ?>>2012</option>
                <option value="11" <?php if(isset($_POST['id']) && $_POST['id'] == '11') echo 'selected'; ?>>2016</option>
                <option value="12" <?php if(isset($_POST['id']) && $_POST['id'] == '12') echo 'selected'; ?>>2020</option>
            </select>

            <button type="submit">Confirm</button>
        </form>
    </div>

    <?php if (!is_null($result1) && !empty($result1)): ?>
    <div class="podium">
        <h2>Top 3 candidates</h2>
        <table>
            <tr>
                <th>Candidate</th>
                <th>Party</th>
                <th>Votes</th>
            </tr>
            <?php foreach ($result1 as $r): ?>
            <tr>
                <td><?= $r['Candidate'] ?></td>
                <td><?= $r['Party'] ?></td>
                <td><?= $r['Votes'] ?></td>
            </tr>
            <?php endforeach; ?>
        </table>
    </div>
    <?php endif; ?>


<!--
<div class="left2">
    <table>
        <tr>
            <th>State</th>
            <th>Candidate</th>
            <th>Party</th>
            <th>Votes</th>
        </tr>
        <?php foreach ($result as $r):?>
        <tr>
            <td><?=$r['State']?></td>
            <td><?=$r['Candidate']?></td>
            <td><?=$r['Party']?></td>
            <td><?=$r['Votes']?></td>
        </tr>
        <?php endforeach;?>
    </table>
</div>
-->

<div class="container">
    <ul>
        <li><a href="index.php">Home</a></li>
        <li><a href="history.php">History</a></li>
        <li><a href="parties.php">Parties</a></li>
        <li><a href="elections.php" style="text-decoration: underline">Elections</a></li>
    </ul>
</div>

</body>
</html>
