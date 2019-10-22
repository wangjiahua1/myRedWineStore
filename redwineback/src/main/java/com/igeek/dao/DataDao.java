package com.igeek.dao;

/**
 * Created by LENOVO on 2019/10/21.
 */
public interface DataDao {
    Long findDate(int pid);

    String findPnameByPid(int maxpid);
}
