<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Elections and the Electoral College</title>
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

        <button type="submit"></button>
    </form>
    <h1><?=$v?></h1>

    <!--
    <table>
            <?php foreach ($result as $r):?>
            <tr>
                <td><?=$r['State']?></td>
                <td><?=$r['Candidate']?></td>
                <td><?=$r['Party']?></td>
                <td><?=$r['Votes']?></td>
            </tr>
            <?php endforeach;?>
    </table>
    -->
    <table>
        <?php if (!empty($result)): ?>
        <tr>
            <?php foreach (array_keys($result[0]) as $header): ?>
            <th><?= htmlspecialchars($header) ?></th>
            <?php endforeach; ?>
        </tr>
        <?php foreach ($result as $r): ?>
        <tr>
            <?php foreach ($r as $cell): ?>
            <td><?= htmlspecialchars($cell) ?></td>
            <?php endforeach; ?>
        </tr>
        <?php endforeach; ?>
        <?php else: ?>
        <tr>
            <td colspan="3">No results found.</td>
        </tr>
        <?php endif; ?>
    </table>

</body>
</html>
