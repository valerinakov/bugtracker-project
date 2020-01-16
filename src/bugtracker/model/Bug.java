package bugtracker.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;



@Entity
@Table(name = "bug")
public class Bug {
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	
	@Column(name = "id")
	private int id;
	
	@Column(name = "bugTitle")
	private String bugTitle;
	
	@Column(name = "created")
	private String created;
	
	@Column(name = "status")
	private String status;
	
	@Column(name = "priority")
	private String priority;
	
	public Bug(){
		
	}
	
	public Bug(int id, String bugTitle, String created, String status, String priority) {
		this.id = id;
		this.bugTitle = bugTitle;
		this.created = created;
		this.status = status;
		this.priority = priority;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getBugTitle() {
		return bugTitle;
	}

	public void setBugTitle(String bugTitle) {
		this.bugTitle = bugTitle;
	}

	public String getCreated() {
		return created;
	}

	public void setCreated(String created) {
		this.created = created;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getPriority() {
		return priority;
	}

	public void setPriority(String priority) {
		this.priority = priority;
	}
	
	
}
