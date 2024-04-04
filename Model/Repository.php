<?php

namespace Model;
use Util\Connection;

class Repository
{
    public static function elections($id)
    {
        $pdo = Connection::getInstance();
        $sql = 'SELECT state.po AS Po, state.name AS State, candidate.name AS Candidate, party_detailed AS Party, candidatevotes AS Votes, FLOOR(candidatevotes/totalvotes*100) AS Percentage
FROM vote
    INNER JOIN election ON id_election = election.id
    INNER JOIN state ON id_state = state.id
    INNER JOIN candidate ON id_candidate = candidate.id
    INNER JOIN party ON id_party = party.id
    INNER JOIN (SELECT id_state, MAX(candidatevotes) AS max_votes
                FROM vote
                WHERE id_election = :id
                GROUP BY id_state)
        AS max_votes_per_state ON vote.id_state = max_votes_per_state.id_state AND vote.candidatevotes = max_votes_per_state.max_votes
WHERE id_election = :id';
        $result = $pdo->prepare($sql);
        $result->execute([
            'id' => $id
        ]);
        return $result->fetchAll();
    }

    public static function elections1($id)
    {
        $pdo = Connection::getInstance();
        $sql = 'SELECT candidate.name AS Candidate, party_detailed AS Party, SUM(candidatevotes) AS Votes
FROM vote INNER JOIN election ON id_election = election.id
          INNER JOIN state ON id_state = state.id
          INNER JOIN candidate ON id_candidate = candidate.id
          INNER JOIN party ON id_party = party.id
WHERE id_election = :id
GROUP BY id_candidate
ORDER BY Votes DESC
LIMIT 0, 3';
        $result = $pdo->prepare($sql);
        $result->execute([
            'id' => $id
        ]);
        return $result->fetchAll();
    }
}