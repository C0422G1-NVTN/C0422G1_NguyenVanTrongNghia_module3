package model;

public class BaiHoc {
    int id;
    String tieuDe;
    String loaiBai;
    String doKho;
    String linkBaiHoc;
    String tenModule;
    String maModule;

    public BaiHoc() {
    }

    public BaiHoc(int id, String tieuDe, String loaiBai, String doKho, String linkBaiHoc, String tenModule, String maModule) {
        this.id = id;
        this.tieuDe = tieuDe;
        this.loaiBai = loaiBai;
        this.doKho = doKho;
        this.linkBaiHoc = linkBaiHoc;
        this.tenModule = tenModule;
        this.maModule = maModule;
    }

    public BaiHoc(String tieuDe, String loaiBai, String doKho, String linkBaiHoc, String tenModule, String maModule) {
        this.tieuDe = tieuDe;
        this.loaiBai = loaiBai;
        this.doKho = doKho;
        this.linkBaiHoc = linkBaiHoc;
        this.tenModule = tenModule;
        this.maModule = maModule;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTieuDe() {
        return tieuDe;
    }

    public void setTieuDe(String tieuDe) {
        this.tieuDe = tieuDe;
    }

    public String getLoaiBai() {
        return loaiBai;
    }

    public void setLoaiBai(String loaiBai) {
        this.loaiBai = loaiBai;
    }

    public String getDoKho() {
        return doKho;
    }

    public void setDoKho(String doKho) {
        this.doKho = doKho;
    }

    public String getLinkBaiHoc() {
        return linkBaiHoc;
    }

    public void setLinkBaiHoc(String linkBaiHoc) {
        this.linkBaiHoc = linkBaiHoc;
    }

    public String getTenModule() {
        return tenModule;
    }

    public void setTenModule(String tenModule) {
        this.tenModule = tenModule;
    }

    public String getMaModule() {
        return maModule;
    }

    public void setMaModule(String maModule) {
        this.maModule = maModule;
    }
}
