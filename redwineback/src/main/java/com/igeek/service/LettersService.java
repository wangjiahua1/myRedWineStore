package com.igeek.service;

import com.igeek.domain.Letter;

import java.util.List;

public interface LettersService {
    List<Letter> findALLletters();

    void changeLetterState(int eid);

    void deleteLetter(int eid);

    Letter findContent(int eid);
}
