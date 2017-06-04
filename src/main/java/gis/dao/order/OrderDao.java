package gis.dao.order;

import java.util.Map;

public interface OrderDao {


    Map<String, Object> save(String nameProduct, double priceProduct, int amountProduct, double totalPrice);

}
