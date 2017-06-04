package gis.controller;

import gis.dao.order.OrderDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Map;


@CrossOrigin(maxAge = 3600)
@Controller
public class AppController {

    @Autowired private OrderDao orderDao;


    @RequestMapping("/")
    public String index() {
        return "/index";
    }

    @RequestMapping(value = "/createOrder", method = RequestMethod.POST)
    public String createOrder(
            Model model,
            @ModelAttribute("nameProduct") String nameProduct,
            @ModelAttribute("priceProduct") double priceProduct,
            @ModelAttribute("amountProduct") int amountProduct,
            @ModelAttribute("totalPrice") double totalPrice
    ) {
        model.addAttribute("nameProduct", nameProduct);
        model.addAttribute("priceProduct", priceProduct);
        model.addAttribute("amountProduct", amountProduct);
        model.addAttribute("totalPrice", totalPrice);
        return "page2";
    }

    @RequestMapping(value = "/saveOrder", method = RequestMethod.POST)
    public String saveOrderGet(
            Model model,
            @ModelAttribute("nameProduct") String nameProduct,
            @ModelAttribute("priceProduct") double priceProduct,
            @ModelAttribute("amountProduct") int amountProduct,
            @ModelAttribute("totalPrice") double totalPrice
    ) {

        Map<String,Object> map = orderDao.save(nameProduct, priceProduct, amountProduct, totalPrice);
        model.addAttribute("response", map);
        model.addAttribute("nameProduct", nameProduct);
        model.addAttribute("priceProduct", priceProduct);
        model.addAttribute("amountProduct", amountProduct);
        model.addAttribute("totalPrice", totalPrice);
        return "page3";
    }
}