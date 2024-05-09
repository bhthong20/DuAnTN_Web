package com.example.demo.repositories;

import com.example.demo.models.ChiTietSanPham;
import com.example.demo.models.SanPham;
import jakarta.transaction.Transactional;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public interface ChiTietSanPhamRepository extends JpaRepository<ChiTietSanPham, UUID> {
    //quy định: trạng thái 0: còn hoạt động, còn kinh doanh
    //quy định: trạng thái 1: ngừng hoạt động, ngừng kinh doanh

    //    //phân trang bên trang hiển thị
    @Query("select c from ChiTietSanPham c  where c.trangThai=0")
    Page<ChiTietSanPham> getAll(Pageable pageable);

    //phân trang bên trang view trạng thái
    @Query("select c from ChiTietSanPham c  where c.trangThai=1")
    Page<ChiTietSanPham> getAll1(Pageable pageable);

    //hiển thị liên combobox với những trường có trạng thái 0
    @Query("select c from ChiTietSanPham c  where  c.trangThai = 0 ")
    List<ChiTietSanPham> findAll0();

    @Query("select ctsp from SanPham ctsp where ctsp.trangThai = 1 and (ctsp.ma like %:search% or ctsp.tenSP like %:search%)")
    List<SanPham> search(String search);

    @Query("select ctsp from ChiTietSanPham ctsp where ctsp.trangThai = 1 and (ctsp.kichThuoc.size like %:search% or ctsp.sanPham.tenSP like %:search% or ctsp.mauSac.ten like %:search% or ctsp.chatLieu.tenChatLieu like %:search%)")
    List<ChiTietSanPham> search1(String search);

    @Query("select ctsp from SanPham ctsp where ctsp.trangThai = 1 and ctsp.thuongHieu.ten like ?1")
    List<SanPham> locTH(String locTH);

    @Query("select ctsp from SanPham ctsp where ctsp.trangThai = 1 and ctsp.phanLoai.tenLoai like ?1")
    List<SanPham> locPL(String locPL);

    @Query("select ctsp from SanPham ctsp where ctsp.trangThai = 1 and (ctsp.thuongHieu.ten like ?1 or ctsp.phanLoai.tenLoai like ?2)")
    List<SanPham> loc(String locTH, String locPL);

    @Query("select ctsp from ChiTietSanPham ctsp where ctsp.trangThai = 1 and (ctsp.sanPham.tenSP like ?1 or ctsp.mauSac.ten like ?2 or ctsp.kichThuoc.size like ?3 or ctsp.chatLieu.tenChatLieu like ?4)")
    List<ChiTietSanPham> loc1(String locSP, String locMS, String locSize, String locDe);

    //update lại toàn bộ các trường có trạng thái 0, vì là câu native query nên tên bảng sẽ lấy theo tên trong sql
    @Transactional
    @Modifying
    @Query(value = "update chi_tiet_san_pham set tinh_trang=0", nativeQuery = true)
    void updateTT();

    List<ChiTietSanPham> findAllBySanPhamAndIsDelete(SanPham sanPham, int delete);

    List<ChiTietSanPham> findAllByIsDelete(int delete);

    List<ChiTietSanPham> findAllByIdNotIn(List<UUID> listId);
}
