package org.sami.electit.shared.domain.entities;

import org.sami.electit.shared.api.dtos.UserDTO;
import org.sami.electit.shared.api.dtos.UserInput;
import org.springframework.data.neo4j.core.schema.GeneratedValue;
import org.springframework.data.neo4j.core.schema.Id;
import org.springframework.data.neo4j.core.schema.Node;
import org.springframework.data.neo4j.core.schema.Relationship;
import org.springframework.data.neo4j.core.schema.Relationship.Direction;

import java.util.List;

@Node
public class User {
    @Id @GeneratedValue
    private Long id;
    private String name;
    private String email;
    private String password;
    private String nationalId;
    private Role role;

    @Relationship(type = "VOTED_IN", direction = Direction.OUTGOING)
    private List<Election> votedInElections;
    @Relationship(type = "VOTED_FOR", direction = Direction.OUTGOING)
    private List<Candidate> votedForCandidates;
    @Relationship(type = "CREATED", direction = Direction.OUTGOING)
    private List<Election> createdElections;
    @Relationship(type = "CAST", direction = Direction.OUTGOING)
    private List<Vote> castVotes;

    // Constructor
    public User(String name, String email, String password, String nationalId, Role role) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.nationalId = nationalId;
        this.role = role;
    }

    // Getters and Setters
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getNationalId() {
        return nationalId;
    }

    public void setNationalId(String nationalId) {
        this.nationalId = nationalId;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public UserDTO toDTO() {
        return new UserDTO(id, name, email, nationalId, role);
    }

    public static User fromCredentials(UserInput credentials, String hashedPassword) {
        return new User(credentials.name(), credentials.email(), hashedPassword, credentials.nationalId(), credentials.role());
    }
}
