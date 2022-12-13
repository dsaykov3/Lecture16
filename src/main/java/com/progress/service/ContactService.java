package com.progress.service;

import com.progress.dao.ContactDAO;
import com.progress.dao.ContactDAOJPARepository;
import com.progress.dao.ContactGroupDAO;
import com.progress.model.Contact;
import com.progress.model.ContactGroup;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ContactService {
    @Autowired
    private ContactDAO contactDAO;

    @Autowired
    private ContactGroupDAO contactGroupDAO;

    @Autowired
    private ContactDAOJPARepository contactDAOJPARepository;


    public List<Contact> getAllContacts() {
        return contactDAOJPARepository.findAll();
    }

    public List<Contact> findBySearchTerm(String searhTerm) {
        return contactDAOJPARepository.findByNameLikeOrEmailLike(searhTerm + "%", searhTerm + "%");
    }

    public void deleteById(Integer contactId) {
        contactDAOJPARepository.deleteById(contactId);
    }

    public Contact getById(Integer contactId) {
        return contactDAOJPARepository.findById(contactId).orElse(null);
    }


    public List<ContactGroup> getAllContactGroups() {
        return contactGroupDAO.findAll();
    }
}
