package org.sami.electit.shared.domain.entities;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.sami.electit.features.candidates.shared.api.dtos.CandidateDTO;
import org.sami.electit.features.elections.shared.api.dtos.ElectionDTO;
import org.sami.electit.features.elections.shared.api.dtos.ElectionInput;
import org.sami.electit.features.elections.shared.api.dtos.UpdateElectionInput;
import org.sami.electit.features.users.shared.api.dtos.OrganizerDTO;
import org.sami.electit.features.users.shared.api.dtos.VoteDTO;
import org.springframework.data.neo4j.core.schema.GeneratedValue;
import org.springframework.data.neo4j.core.schema.Id;
import org.springframework.data.neo4j.core.schema.Node;
import org.springframework.data.neo4j.core.schema.Relationship;

@Node
public record Election(
        @Id @GeneratedValue Long id,
        String title,
        String description,
        Long startTimestamp,
        Long duration,
        @Relationship(type = "PARTICIPATES_IN", direction = Relationship.Direction.INCOMING)
        Set<Candidate> candidates
) {
    public static Election fromDTO(ElectionInput electionInput) {
        return new Election(null, electionInput.title(), electionInput.description(), electionInput.startTimestamp(), electionInput.duration(), new HashSet<>());
    }

    public ElectionDTO toDTO(CandidateDTO winner, Integer votesCount, List<CandidateDTO> candidates, VoteDTO myVote, OrganizerDTO organizer) {
        return new ElectionDTO(id(), title(), description(), startTimestamp(), duration(), candidates, winner, votesCount, myVote, organizer);
    }

    public Election update(UpdateElectionInput election) {
        return new Election(
                id(),
                election.title() != null ? election.title() : title(),
                election.description() != null ? election.description() : description(),
                election.startTimestamp() != null ? election.startTimestamp() : startTimestamp(),
                election.duration() != null ? election.duration() : duration(),
                candidates
        );
    }

    public Long endTimestamp() {
        return startTimestamp() + duration();
    }

    public Boolean isOngoing() {
        var currentTimestamp = System.currentTimeMillis() / 1000;
        return startTimestamp() <= currentTimestamp && currentTimestamp <= endTimestamp();
    }

    public Boolean isFromThePast() {
        var currentTimestamp = System.currentTimeMillis() / 1000;
        return endTimestamp() < currentTimestamp;
    }

    public Boolean isUpcoming() {
        var currentTimestamp = System.currentTimeMillis() / 1000;
        return startTimestamp() > currentTimestamp;
    }
}