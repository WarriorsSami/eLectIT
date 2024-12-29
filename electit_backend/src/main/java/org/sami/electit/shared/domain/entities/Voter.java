package org.sami.electit.shared.domain.entities;

import org.sami.electit.features.users.shared.api.dtos.UserDTO;
import org.sami.electit.features.users.shared.api.dtos.VoterDTO;
import org.sami.electit.features.users.shared.api.dtos.VoterInput;
import org.springframework.data.neo4j.core.schema.Node;
import org.springframework.data.neo4j.core.schema.Relationship;

import java.time.Instant;
import java.util.Date;
import java.util.Set;

@Node("Voter")
public class Voter extends User {
	private String nationalId;
	@Relationship(type = "CASTED_VOTE", direction = Relationship.Direction.OUTGOING)
	private Set<Vote> votes;

	public Voter(Long id, String name, String email, String password, String nationalId, Set<Vote> votes) {
		super(id, name, email, password);
		this.nationalId = nationalId;
		this.votes = votes;
	}

	public String getNationalId() {
		return nationalId;
	}

	public void setNationalId(String nationalId) {
		this.nationalId = nationalId;
	}

	public Set<Vote> getVotes() {
		return votes;
	}

	public void setVotes(Set<Vote> votes) {
		this.votes = votes;
	}

	public Vote addVote(Candidate candidate) {
		var vote = new Vote(null, Instant.now().getEpochSecond(), candidate);
		votes.add(vote);
		return vote;
	}

	public static Voter fromCredentials(VoterInput credentials, String hashedPassword) {
		return new Voter(null, credentials.name(), credentials.email(), hashedPassword, credentials.nationalId(), Set.of());
	}

	public UserDTO toDTO() {
		return new UserDTO(
				new VoterDTO(getId(), getName(), getEmail(), nationalId, Role.VOTER, votes.stream().toList()),
				null);
	}

	public Role role() {
		return Role.VOTER;
	}
}
