package bootsample.servicer;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;
import bootsample.moddel.Task;
import bootsample.dao.TaskRepository;
import java.util.ArrayList;
import java.util.List;

@Service
@Transactional

public class TaskServicer {
	
	
	private final TaskRepository taskRepository;

	public TaskServicer(TaskRepository taskRepository) {
		this.taskRepository = taskRepository;
	}
	
	public List<Task> findAll(){
		List<Task> tasks = new ArrayList<>();
		for(Task task : taskRepository.findAll()){
			tasks.add(task);
		}
		return tasks;	
		
	}
	public Task findTask(int id){
		return taskRepository.findOne(id);
	}
	
	public void save(Task task){
		taskRepository.save(task);
	}
	
	public void delete(int id){
		taskRepository.delete(id);
	}
	
	
}
