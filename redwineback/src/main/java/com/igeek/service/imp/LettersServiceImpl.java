package com.igeek.service.imp;

import com.igeek.dao.LettersDao;
import com.igeek.domain.Letter;
import com.igeek.service.LettersService;
import com.igeek.untilts.BeanFactory;

import java.util.List;

public class LettersServiceImpl implements LettersService {
    LettersDao dao = (LettersDao) BeanFactory.getBean("lettersDao");


    @Override
    public List<Letter> findALLletters() {
        return dao.findALLletters();
    }

    @Override
    public void changeLetterState(int eid) {
        dao.changeLetterState(eid);
    }

    @Override
    public void deleteLetter(int eid) {
        dao.deleteLetter(eid);
    }

    @Override
    public Letter findContent(int eid) {
        return dao.findContent(eid);
    }
}
