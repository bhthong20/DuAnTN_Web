package com.example.demo.services.impl;

import com.example.demo.services.TemplateExcelService;
import com.example.demo.util.XLXUtils;
import org.jxls.util.Util;
import org.springframework.stereotype.Service;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

@Service
public class TemplateExcelServiceImpl implements TemplateExcelService {

    @Override
    public ByteArrayOutputStream downloadExcelSanPham() throws IOException {
        XLXUtils report = new XLXUtils();

        ByteArrayOutputStream out = null;
        out = new ByteArrayOutputStream();
        Map<String, Object> map = new HashMap<>();
        map.put("aaa", "Xin chào");

        report.createDocument(out, "export_san_pham", map);
        return out;
    }
}
