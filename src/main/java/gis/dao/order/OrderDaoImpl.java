package gis.dao.order;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;

import javax.sql.DataSource;
import java.sql.PreparedStatement;
import java.util.HashMap;
import java.util.Map;

public class OrderDaoImpl implements OrderDao {

    private JdbcTemplate db;

    public OrderDaoImpl(DataSource source) {
        this.db = new JdbcTemplate(source);
    }



    @Override
    public Map<String, Object> save(String nameProduct, double priceProduct, int amountProduct, double totalPrice) {
        Map<String, Object> infoMap = new HashMap<>();
        infoMap.put("error", 0);
        infoMap.put("errorMsg", "");
        infoMap.put("errorBody", "");

        try {

            KeyHolder keyHolder = new GeneratedKeyHolder();
            db.update(connection -> {
                String sql = " INSERT INTO Product (nameProduct, priceProduct, amountProduct,totalPrice) VALUES (?,?,?,?)";
                PreparedStatement ps = connection.prepareStatement(sql, new String[]{"id"});
                ps.setString(1, nameProduct);
                ps.setDouble(2, priceProduct);
                ps.setInt(3, amountProduct);
                ps.setDouble(4, totalPrice);
                return ps;
            }, keyHolder);
            long id = keyHolder.getKey().longValue();

            infoMap.put("id", id);


        } catch (Exception e) {

            infoMap.put("error", 1);
            infoMap.put("errorMsg", "Не удалось сохранить данные в базу");
            infoMap.put("errorBody", e.getMessage());

        }

        return infoMap;
    }

}