package bootsample.servicer;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;
import bootsample.moddel.Taikhoan;
import bootsample.dao.TaikhoanRepository;


import java.util.ArrayList;
import java.util.List;

@Service
@Transactional

public class TaikhoanServicer {
	
	private final TaikhoanRepository TaikhoanRepository;

	public TaikhoanServicer(TaikhoanRepository TaikhoanRepository) {
		this.TaikhoanRepository= TaikhoanRepository;
	}
	
	public List<Taikhoan> findAll(){
		List<Taikhoan> Taikhoan = new ArrayList<>();
		for(Taikhoan taikhoan : TaikhoanRepository.findAll()){
			Taikhoan.add(taikhoan);
		}
		return Taikhoan;	
		
	}
	public Taikhoan findTask(int id){
		return TaikhoanRepository.findOne(id);
	}
	public int kiemtradangnhap(String tendangnhap,String pass){	
		for(Taikhoan taikhoan : TaikhoanRepository.findAll()){
			if(taikhoan.getTendangnhap().equals(tendangnhap)&&taikhoan.getMatkhau().equals(pass))
			{			
				return 1;
			}				
		}
		return 0;
	}	
	
	public void save(Taikhoan taikhoan){
		TaikhoanRepository.save(taikhoan);
	}
	
	public void delete(int id){
		TaikhoanRepository.delete(id);
	}
	
	
}
