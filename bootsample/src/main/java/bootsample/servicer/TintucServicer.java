package bootsample.servicer;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;
import bootsample.moddel.Tintuc;
import bootsample.dao.TintucRepository;
import java.util.ArrayList;
import java.util.List;

@Service
@Transactional

public class TintucServicer {
	
	
	private final TintucRepository tintucRepository;

	public TintucServicer(TintucRepository tintucRepository) {
		this.tintucRepository= tintucRepository;
	}
	
	public List<Tintuc> findAll(){
		List<Tintuc> Tintuc = new ArrayList<>();
		for(Tintuc tintuc  : tintucRepository.findAll()){
			Tintuc.add(tintuc);
		}
		return Tintuc;	
		
	}
	
	public Tintuc findTinTuc(int id){
		Tintuc tintucs = new Tintuc();
		for(Tintuc tintuc : tintucRepository.findAll()){
			if(tintuc.getId()==id)
			{			
				return tintuc;
			}				
		}
		return tintucs;
	}	
	
	
	public Tintuc findTintuc(int id){
		return tintucRepository.findOne(id);
	}
	
	public void save(Tintuc tintuc){
		tintucRepository.save(tintuc);
	}
	
	public void delete(int id){
		tintucRepository.delete(id);
	}
	
	
}
