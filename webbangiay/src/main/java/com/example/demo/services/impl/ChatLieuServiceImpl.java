package com.example.demo.services.impl;


import com.example.demo.models.ChatLieu;
import com.example.demo.repositories.ChatLieuRepository;
import com.example.demo.services.ChatLieuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ChatLieuServiceImpl implements ChatLieuService {
    @Autowired
    ChatLieuRepository chatLieuRepository;
    @Override
    public List<ChatLieu> findAll() {
        return chatLieuRepository.findAll();
    }

    @Override
    public ChatLieu add(ChatLieu chatLieu) {
        return chatLieuRepository.save(chatLieu);
    }

}
