package cch.service.Impl;


import cch.dao.PersonRepository;
import cch.entity.Person;
import cch.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("personService")
public class PersonServiceImpl implements PersonService {
    @Autowired
    private PersonRepository personRepository;

    @Override
    public Person findById(Integer id) {
        return personRepository.getPerson(id);
    }
}
