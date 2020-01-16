package bugtracker.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import bugtracker.model.Bug;
import bugtracker.model.Report;
import bugtracker.service.BugService;

@Controller
public class BugController {
	
	@Autowired
	BugService service;
	
	@RequestMapping("/test")
	public ModelAndView test() {
		ModelAndView mv = new ModelAndView("test");
		return mv;
	}
	
	@RequestMapping(value = "getbugs", method = RequestMethod.GET)
	public ModelAndView getBugsList() {
		ModelAndView mv = new ModelAndView("bugs");
		
		List<Bug> bugs = service.getBugs();
		mv.addObject("bugList", bugs);
		mv.addObject("bug", new Bug());
		
		return mv;
	}
	
	@RequestMapping(value = "addbug")
	public ModelAndView addBug() {
		ModelAndView mv = new ModelAndView("add-bug");
		mv.addObject("bug", new Bug());
		return mv;
	}
	
	
	@RequestMapping(value = "saveBug", method = RequestMethod.POST)
	public String saveBug(@ModelAttribute("bug")Bug bug) {
		if (service.addBug(bug))
			return "redirect:/getbugs";
		else {
			return "ErrorPage";
		}
	}
	
	@RequestMapping(value = "editbug")
	public ModelAndView editBug(@RequestParam("bugId") int bugId) {
		ModelAndView mv = new ModelAndView("edit-bug");
		List<Report> fetchedBug = service.getReports(bugId);
		
		mv.addObject("editedbug", fetchedBug);
		return mv;
	}
	
	@RequestMapping(value = "addreport")
	public ModelAndView addReport() {
		ModelAndView mv = new ModelAndView("add-report");
		mv.addObject("report", new Report());
		return mv;
	}
	
	@RequestMapping(value = "saveReport", method = RequestMethod.POST)
	public String saveBug(@ModelAttribute("report")Report report) {
		if (service.addReport(report))
			return "redirect:/getbugs";
		else {
			return "ErrorPage";
		}
	}
	
	@RequestMapping(value = "closebug", method = RequestMethod.GET)
	public String closeBug(@RequestParam("bugId") int bugId) {
		service.closeBug(bugId);
		return "redirect:/getbugs";
	}
	
	@RequestMapping(value = "deletereport")
	public String deleteReport(@RequestParam("reportId")int reportId) {
		if(service.deleteReport(reportId)) {
			return "redirect:/getbugs";
		}else {
			return "ErrorPage";
		}
	}
}
