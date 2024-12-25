package com.example.demo.util;

import com.example.demo.models.ChiTietSanPham;
import com.example.demo.models.dto.BanHangRequest;
import com.example.demo.models.dto.GioHangDto;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

import java.net.URLDecoder;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.stream.Collectors;

@Component
@RequiredArgsConstructor
@Slf4j
public class Cookies {

    private final Gson gson;

    public void addCartToCookie(HttpServletRequest request, HttpServletResponse response, String name, BanHangRequest banHangRequest) {
        log.info("{} addCartToCookie banHangRequest {}", getClass().getSimpleName(), banHangRequest);
        try {
            Cookie[] cookies = request.getCookies();

            GioHangDto cartItems = GioHangDto.builder()
                    .id(UUID.randomUUID())
                    .soLuong(banHangRequest.getSoLuong())
                    .donGia(banHangRequest.getDonGia())
                    .idChiTietSanPham(UUID.fromString(banHangRequest.getChiTietSanPham()))
                    .build();
            List<GioHangDto> listCartItem = new ArrayList<>();
            if (cookies != null) {
                for (Cookie cookie : cookies) {
                    if (cookie.getName().equals(name)) {
                        listCartItem = gson.fromJson(URLDecoder.decode(cookie.getValue(), StandardCharsets.UTF_8), new TypeToken<List<GioHangDto>>() {
                        }.getType());
                        boolean checkExist = listCartItem.stream().anyMatch(e -> e.getIdChiTietSanPham().equals(UUID.fromString(banHangRequest.getChiTietSanPham())));

                        if (!checkExist) {
                            listCartItem.add(cartItems);
                        } else {
                            listCartItem.stream()
                                    .filter(e -> e.getIdChiTietSanPham().equals(UUID.fromString(banHangRequest.getChiTietSanPham())))
                                    .findFirst()
                                    .ifPresent(item -> item.setSoLuong(item.getSoLuong() + banHangRequest.getSoLuong()));
                        }
                        cookie.setValue(URLEncoder.encode(gson.toJson(listCartItem), StandardCharsets.UTF_8));
                        cookie.setMaxAge(2592000);
                        cookie.setHttpOnly(true);
                        cookie.setPath("/");
                        response.addCookie(cookie);
                        return;
                    }
                }
            }

            listCartItem.add(cartItems);

            Cookie cookie = new Cookie(name, URLEncoder.encode(gson.toJson(listCartItem), StandardCharsets.UTF_8));
            cookie.setMaxAge(2592000);
            cookie.setHttpOnly(true);
            cookie.setPath("/");
            response.addCookie(cookie);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public Boolean deleteCartCookie(HttpServletRequest request, HttpServletResponse response, List<UUID> ids, String name) {
        log.info("{} deleteCartCookie ids {}", getClass().getSimpleName(), ids);
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals(name)) {
                    List<GioHangDto> listCartItem = gson.fromJson(URLDecoder.decode(cookie.getValue(), StandardCharsets.UTF_8), new TypeToken<List<GioHangDto>>() {
                    }.getType());
                    listCartItem = listCartItem.stream().filter(e -> !ids.contains(e.getId())).collect(Collectors.toList());
                    cookie.setValue(URLEncoder.encode(gson.toJson(listCartItem), StandardCharsets.UTF_8));
                    cookie.setMaxAge(2592000);
                    cookie.setHttpOnly(true);
                    cookie.setPath("/");
                    response.addCookie(cookie);
                    return true;
                }
            }
        }
        return false;
    }
    public Boolean deleteCartPayCookie(HttpServletRequest request, HttpServletResponse response, List<BanHangRequest> banHangRequests, String name) {
        log.info("{} deleteCartPayCookie banHangRequests {}", getClass().getSimpleName(), banHangRequests);
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals(name)) {
                    List<GioHangDto> listCartItem = gson.fromJson(URLDecoder.decode(cookie.getValue(), StandardCharsets.UTF_8), new TypeToken<List<GioHangDto>>() {
                    }.getType());
                    List<String> ids = banHangRequests.stream().map(BanHangRequest::getChiTietSanPham).collect(Collectors.toList());
                    listCartItem = listCartItem.stream().filter(e -> !ids.contains(String.valueOf(e.getIdChiTietSanPham()))).collect(Collectors.toList());
                    cookie.setValue(URLEncoder.encode(gson.toJson(listCartItem), StandardCharsets.UTF_8));
                    cookie.setMaxAge(2592000);
                    cookie.setHttpOnly(true);
                    cookie.setPath("/");
                    response.addCookie(cookie);
                    return true;
                }
            }
        }
        return false;
    }
    public Boolean updateQuantityCartCookie(HttpServletRequest request, HttpServletResponse response, List<BanHangRequest> banHangRequests, String name) {
        log.info("{} deleteCartCookie banHangRequests {}", getClass().getSimpleName(), banHangRequests);
        Cookie[] cookies = request.getCookies();

        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals(name)) {
                    List<GioHangDto> listCartItem = gson.fromJson(URLDecoder.decode(cookie.getValue(), StandardCharsets.UTF_8), new TypeToken<List<GioHangDto>>() {
                    }.getType());
                    Map<UUID, Integer> quantityMap = banHangRequests.stream()
                            .collect(Collectors.toMap(
                                    f -> UUID.fromString(f.getChiTietSanPham()),
                                    BanHangRequest::getSoLuong
                            ));

                    listCartItem.forEach(item -> {
                        Integer newQuantity = quantityMap.get(item.getIdChiTietSanPham());
                        if (newQuantity != null) {
                            item.setSoLuong(newQuantity);
                        }
                    });
                    cookie.setValue(URLEncoder.encode(gson.toJson(listCartItem), StandardCharsets.UTF_8));
                    cookie.setMaxAge(2592000);
                    cookie.setHttpOnly(true);
                    cookie.setPath("/");
                    response.addCookie(cookie);
                    return true;
                }
            }
        }
        return false;
    }

    public String getCookieValue(HttpServletRequest request, String name) {
        log.info("{} addCartToCookie name {}", getClass().getSimpleName(), name);
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals(name)) {
                    return cookie.getValue();
                }
            }
        }
        return null;
    }
}
