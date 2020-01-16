package bugtracker.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import bugtracker.model.Bug;
import bugtracker.model.Report;

@Repository
public class HibernateBugDaoImpl implements BugDao{

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public int addBug(Bug bug) {
		sessionFactory.getCurrentSession().save(bug);
		return 1;
	}
	
	@Override
	public int addReport(Report report) {
		sessionFactory.getCurrentSession().save(report);
		return 1;
	}

	@Override
	public List<Bug> getBugs() {
		return sessionFactory.getCurrentSession().createQuery("from Bug", Bug.class).list();
	}


	@Override
	public Bug getBugById(int bugId) {
		return sessionFactory.getCurrentSession().get(Bug.class, bugId);
	}

	@Override
	public List<Report> getReports(int bugId) {

		
        return  sessionFactory.getCurrentSession().createQuery(
                "from Report where bugId= :bugId").setParameter("bugId", bugId).list();
	}

	@Override
	public int closeBug(int bugId) {
		String hql = "update Bug set status = :status where id = :bugId";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter("status", "Closed");
		query.setParameter("bugId", bugId);
		query.executeUpdate();
		return 1;
	}

	@Override
	public boolean deleteReport(int reportId) {
		Report fetchedReport = getReportById(reportId);
		sessionFactory.getCurrentSession().delete(fetchedReport);
		return true;
	}

	@Override
	public Report getReportById(int reportId) {
		return (Report) sessionFactory.getCurrentSession().get(Report.class, reportId);
	}


	
}
