package com.fpl.sof2031.repositories;

import com.fpl.sof2031.entities.Users;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UsersRepository extends JpaRepository<Users, Integer> {
    Users findByUsernameAndPassword(String username, String password);

    List<Users> findByRoleOrRole(int i, int i1);

    List<Users> findByRole(int i);

    Users findByUsernameAndDeleted(String username, int i);
}
