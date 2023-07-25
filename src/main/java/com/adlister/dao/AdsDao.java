package com.adlister.dao;


import java.util.List;

public interface AdsDao {
    <Ad> List<Ad> all();
    <Ad> Ad findById(long id);
    <Ad> long insert(Ad ad);
}
