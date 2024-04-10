package com.example.demo.services.impl;

import com.example.demo.models.dto.HomeQuangBaRequest;
import com.example.demo.models.dto.HomeQuangBaRespose;
import com.example.demo.repositories.SanPhamRepository;
import com.example.demo.services.HomeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

@Service
public class HomeServiceImpl implements HomeService {

    @Autowired
    private SanPhamRepository sanPhamRepository;

    @Override
    public Page<HomeQuangBaRespose> getSanPhamQuangBan(HomeQuangBaRequest request) {
        Pageable pageable = getPageable(request.getPage(), request.getSize(), request.getSortField(), request.getSortType());
        return sanPhamRepository.getSanPhamQuangBa(request, pageable);
    }

    public static Pageable getPageable(int page, int size, String sortField, String sortType) {
        Sort sort = sort(sortField, sortType);
        if (sort == null) {
            return PageRequest.of(page, size);
        }
        return PageRequest.of(page, size, sort);
    }

    public static Sort sort(String sortField, String sortType) {
        if (sortField != null && !sortField.isEmpty()) {
            return sortType.equalsIgnoreCase("desc") ? Sort.by(Sort.Direction.DESC, sortField) : Sort.by(Sort.Direction.ASC, sortField);
        } else {
            return null;
        }
    }
}
