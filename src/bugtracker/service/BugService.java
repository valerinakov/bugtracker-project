package bugtracker.service;

import java.util.List;

import bugtracker.model.Bug;
import bugtracker.model.Report;

public interface BugService {
	public boolean addBug(Bug bug);
	
	public boolean addReport(Report report);
	
	public int closeBug(int bugId);
	
	public boolean deleteReport(int reportId);
	
	public Report getReportById(int reportId); 
	
	public List<Bug> getBugs();
	
	public Bug getBugById(int bugId);
	
	public List<Report> getReports(int bugId);
}
