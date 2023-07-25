package dao;

import com.mysql.cj.jdbc.Driver;
import models.Ad;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import static javax.swing.text.html.HTML.Tag.OL;

public class MySQLAdsDao implements Ads {

    private final Connection connection;


    public MySQLAdsDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(config.getUrl(), config.getUser(),
                    config.getPassword());
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }


    @Override
    public List<Ad> all() {
        List<Ad> ads = new ArrayList<>();
        try {
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM ads");
            while (rs.next()) {
                ads.add(new Ad(
                        rs.getLong("id"),
                        rs.getLong("user_id"),
                        rs.getString("title"),
                        rs.getString("description")
                ));
            }
            return ads;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    @Override
    public long insert(Ad ad) {
        try {
            Statement stmt = connection.createStatement();
            stmt.executeUpdate(String.format("INSERT INTO ads (title,description,user_id) VALUES ('%s', '%s', %d", ad.getTitle(),
                    ad.getDescription(),ad.getUserId()), Statement.RETURN_GENERATED_KEYS);
            ResultSet rs = stmt.getGeneratedKeys();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
}





