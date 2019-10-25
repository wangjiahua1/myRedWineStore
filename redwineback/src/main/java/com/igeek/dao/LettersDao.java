package com.igeek.dao;

import com.igeek.domain.Letter;

import java.util.List;

public interface LettersDao {
    List<Letter> findALLletters();

    void changeLetterState(int eid);

    void deleteLetter(int eid);

    Letter findContent(int eid);

}
