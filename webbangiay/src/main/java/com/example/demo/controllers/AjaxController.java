package com.example.demo.controllers;

import com.example.demo.services.impl.VNPayService;
import com.example.demo.util.ConfigVnpay;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.UnsupportedEncodingException;

@RestController
public class AjaxController {

    @Autowired
    private VNPayService service;

    @GetMapping("/payment")
    public String payment() throws UnsupportedEncodingException {
        return service.createOrder(10000000, "other");
    }

    @GetMapping("/vnpay-payment")
    public String GetMapping(HttpServletRequest request){
        int paymentStatus =service.orderReturn(request);

        String orderInfo = request.getParameter("vnp_OrderInfo");
        String paymentTime = request.getParameter("vnp_PayDate");
        String transactionId = request.getParameter("vnp_TransactionNo");
        String totalPrice = request.getParameter("vnp_Amount");

        return paymentStatus == 1 ? "ordersuccess" : "orderfail";
    }
}
