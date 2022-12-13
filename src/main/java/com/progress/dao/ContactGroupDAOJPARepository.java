package com.progress.dao;

import com.progress.model.ContactGroup;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ContactGroupDAOJPARepository extends JpaRepository<ContactGroup, Integer> {
}
