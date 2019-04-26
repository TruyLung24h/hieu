
package bootsample.moddel;
import java.io.Serializable;
//import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
//import javax.persistence.Temporal;
//import javax.persistence.TemporalType;

@Entity(name="taikhoan")
public class Taikhoan implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String tendangnhap;
	private String matkhau;
	
	
	public Taikhoan() {}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getTendangnhap() {
		return tendangnhap;
	}


	public void setTendangnhap(String tendangnhap) {
		this.tendangnhap = tendangnhap;
	}


	public String getMatkhau() {
		return matkhau;
	}


	public void setMatkhau(String matkhau) {
		this.matkhau = matkhau;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}


	@Override
	public String toString() {
		return "Taikhoan [id=" + id + ", tendangnhap=" + tendangnhap + ", matkhau=" + matkhau + "]";
	}
	
	
}


	