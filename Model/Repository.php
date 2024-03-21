<?php

namespace Model;
use Util\Connection;

class Repository
{
    public static function elections($id)
    {
        $pdo = Connection::getInstance();
        $sql = 'SELECT state.name AS State, candidate.name AS Candidate, party_detailed AS Party, candidatevotes AS Votes
FROM vote INNER JOIN election ON id_election = election.id
INNER JOIN state ON id_state = state.id
INNER JOIN candidate ON id_candidate = candidate.id
INNER JOIN party ON id_party = party.id
WHERE id_election = :id
GROUP BY id_state';
        $result = $pdo->prepare($sql);
        $result->execute([
            'id' => $id
        ]);
        return $result->fetchAll();
    }
}