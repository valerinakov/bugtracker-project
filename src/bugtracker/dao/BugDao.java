package bugtracker.dao;

import java.util.List;


import bugtracker.model.Bug;
import bugtracker.model.Report;

public interface BugDao {
	
	public int addBug(Bug bug);
	
	public int addReport(Report report);
	
	public int closeBug(int bugId);
	
	public boolean deleteReport(int reportId);
	
	public Report getReportById(int reportId); 
	
	public Bug getBugById(int bugId);
	
	public List<Bug> getBugs();
	
	public List<Report> getReports(int bugId);
}
