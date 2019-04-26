package bootsample.moddel;
import java.io.Serializable;
//import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name="tintuc")
public class Tintuc implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String tieude;
	private String danhmuc;
	
	private String tomtatnoidung;
	//@Temporal(TemporalType.TIMESTAMP)
	private String noidung;
	private String hinhanh;
	private String nguoidang;
	private String thoigian;
	
	
	public Tintuc() {}


	public String getDanhmuc() {
		return danhmuc;
	}


	public void setDanhmuc(String danhmuc) {
		this.danhmuc = danhmuc;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getTieude() {
		return tieude;
	}


	public void setTieude(String tieude) {
		this.tieude = tieude;
	}


	public String getTomtatnoidung() {
		return tomtatnoidung;
	}


	public void setTomtatnoidung(String tomtatnoidung) {
		this.tomtatnoidung = tomtatnoidung;
	}


	public String getNoidung() {
		return noidung;
	}


	public void setNoidung(String noidung) {
		this.noidung = noidung;
	}


	public String getHinhanh() {
		return hinhanh;
	}


	public void setHinhanh(String hinhanh) {
		this.hinhanh = hinhanh;
	}


	public String getNguoidang() {
		return nguoidang;
	}


	public void setNguoidang(String nguoidang) {
		this.nguoidang = nguoidang;
	}


	public String getThoigian() {
		return thoigian;
	}


	public void setThoigian(String thoigian) {
		this.thoigian = thoigian;
	}


	@Override
	public String toString() {
		return "Tintuc [id=" + id + ", tieude=" + tieude + ", danhmuc=" + danhmuc + ", tomtatnoidung=" + tomtatnoidung
				+ ", noidung=" + noidung + ", hinhanh=" + hinhanh + ", nguoidang=" + nguoidang + ", thoigian="
				+ thoigian + "]";
	}


	
	
	
	
	
	
}

