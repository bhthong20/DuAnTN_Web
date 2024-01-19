package com.example.demo.services;

import com.example.demo.models.ChatLieu;

import java.util.List;

public interface ChatLieuService {

    public List<ChatLieu> findAll();

    public ChatLieu add(ChatLieu chatLieu);
}
