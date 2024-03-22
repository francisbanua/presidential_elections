<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Elections and the Electoral College</title>
    <script src="mapdata2.js"></script>
    <script src="mapdata2base.js"></script>
    <script src="usmap.js"></script>

    <script>
        // Get the state_specific data from mapdata2.js
        const stateSpecificData = mapdata.state_specific;

        // Merge state_specific data into mapdata2base.js
        Object.assign(simplemaps_usmap_mapdata.state_specific, stateSpecificData);
    </script>
</head>
<body>
    <h1>Elections and the Electoral College</h1>
    <h2>The Electoral College</h2>
    <p>
        The Electoral College is a body of electors established by the United
        States Constitution, which forms every four years for the sole purpose
        of electing the president and vice president. Each state is allocated a
        number of electors equal to its total number of representatives in
        Congress, and Washington D.C. is allocated three electors.
    </p>

    <h2>Presidential Elections</h2>
    <p>
        Presidential elections are held every four years, on the first Tuesday
        after the first Monday in November. The candidate who wins the majority
        of electoral votes (270 out of 538) becomes President.
    </p>

    <h2>Impact of Electoral College on Elections</h2>
    <p>
        The Electoral College system means that it is possible for a candidate
        to win the national popular vote but lose the election by failing to
        secure a majority of electoral votes. This has happened in five
        presidential elections, most recently in 2016.
    </p>

    <form action="elections.php" method="post">
        <select name="id">
            <option value="1">1976</option>
            <option value="2">1980</option>
            <option value="3">1984</option>
            <option value="4">1988</option>
            <option value="5">1992</option>
            <option value="6">1996</option>
            <option value="7">2000</option>
            <option value="8">2004</option>
            <option value="9">2008</option>
            <option value="10">2012</option>
            <option value="11">2016</option>
            <option value="12">2020</option>
        </select>

        <button type="submit">Confirm</button>
    </form>

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

    <table>
        <tr>
            <th>Candidate</th>
            <th>Party</th>
            <th>Votes</th>
        </tr>
        <?php foreach ($result1 as $r):?>
        <tr>
            <td><?=$r['Candidate']?></td>
            <td><?=$r['Party']?></td>
            <td><?=$r['Votes']?></td>
        </tr>
        <?php endforeach;?>
    </table>

    <div style="max-width: 700px; clip-path: polygon(0% 15%, 0 0, 15% 0%, 85% 0%, 100% 0, 100% 15%, 100% 94%, 60% 94%, 60% 100%, 15% 100%, 0 100%, 0% 85%)">
        <div id="map"></div>
    </div>
</body>
</html>
