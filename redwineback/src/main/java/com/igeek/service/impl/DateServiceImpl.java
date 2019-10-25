package com.igeek.service.impl;

import com.igeek.dao.DataDao;
import com.igeek.domain.Data;
import com.igeek.service.DataService;
import com.igeek.untilts.BeanFactory;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * Created by LENOVO on 2019/10/21.
 */
public class DateServiceImpl implements DataService {
    DataDao dao = (DataDao) BeanFactory.getBean("datadao");
    @Override
    public List<Data> findMostDate() {
        long[] counts = new long[99];
        for (int i = 1; i <= 99; i++) {
            int pid = i;
            counts[i-1] = dao.findDate(pid);
        }
        long[] bb = counts;
        Arrays.sort(bb);
        Long count = 0L;
        for (int i = 0; i <= 96; i++) {
            count = count + bb[i];
        }
        Long max = bb[98];
        Long max1 = bb[97];
        Long max2 = bb[96];
        int maxpid = 1,maxpid1 = 1,maxpid2 = 1;
        String maxpname = null,maxpname1 = null,maxpname2 = null;
        for (int i = 0; i < 99; i++) {
            if (max == counts[i] && maxpname == null){
                maxpid = i+1;
                maxpname = dao.findPnameByPid(maxpid);
            }else if (max1 == counts[i] && maxpname1 == null){
                maxpid1 = i+1;
                maxpname1 = dao.findPnameByPid(maxpid1);
            }else if (max2 == counts[i] && maxpname2 == null){
                maxpid2 = i+1;
                maxpname2 = dao.findPnameByPid(maxpid2);
            }
        }
        Data dataMax = new Data(maxpname,max);
        Data dataMax1 = new Data(maxpname1,max1);
        Data dataMax2 = new Data(maxpname2,max2);
        Data other = new Data("other",count);
        List<Data> datas = new ArrayList<>();
        datas.add(dataMax);
        datas.add(dataMax1);
        datas.add(dataMax2);
        datas.add(other);
        return datas;
    }
}
