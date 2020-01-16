package bugtracker.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import bugtracker.dao.BugDao;
import bugtracker.model.Bug;
import bugtracker.model.Report;

@Service
@Transactional
public class BugServiceImpl implements BugService {
	
	@Autowired
	BugDao bugDao;

	@Override
	public boolean addBug(Bug bug) {
		return bugDao.addBug(bug) > 0;
	}
	
	@Override
	public boolean addReport(Report report) {
		return bugDao.addReport(report)>0;
	}

	@Override
	public List<Bug> getBugs() {
		return bugDao.getBugs();
	}

	@Override
	public Bug getBugById(int bugId) {
		return bugDao.getBugById(bugId);
	}

	@Override
	public List<Report> getReports(int bugId) {
		// TODO Auto-generated method stub
		return bugDao.getReports(bugId);
	}

	@Override
	public int closeBug(int bugId) {
		return bugDao.closeBug(bugId);
	}

	@Override
	public boolean deleteReport(int reportId) {
		return bugDao.deleteReport(reportId);
	}

	@Override
	public Report getReportById(int reportId) {
		return bugDao.getReportById(reportId);
	}

}
