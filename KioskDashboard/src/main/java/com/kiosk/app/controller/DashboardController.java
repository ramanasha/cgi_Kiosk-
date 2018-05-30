package com.kiosk.app.controller;

import com.kiosk.app.model.Response;
import com.kiosk.app.model.ResponseReport;
import com.kiosk.app.model.ResponseSummary;
import com.kiosk.app.repo.CounterRepo;
import com.kiosk.app.repo.LocalAuthorityRepo;
import com.kiosk.app.repo.ResponseReportRepo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;


@Controller
public class DashboardController {


    @Autowired
    CounterRepo counterRepo;

    @Autowired
    ResponseReportRepo responseReportRepo;

    @Autowired
    LocalAuthorityRepo localAuthorityRepo;

    private String referenceId = "";

    private String counter = "";
    private String response = "";

    private final static Logger logger = LoggerFactory.getLogger(DashboardController.class);


    @RequestMapping("/")
    public String handleRequest() {

        return "index";

    }
    @RequestMapping(value = "/table", method = RequestMethod.GET)
    public ModelAndView getTable() {

        ModelAndView model = new ModelAndView();
        List<String> counters = counterRepo.getCounterIdByLaId(referenceId);
        String localAuthority = localAuthorityRepo.findLocalAuthorityByReferenceId(referenceId);
        List<ResponseSummary> summary = new ArrayList<>();
        for(int i=0;i<counters.size();i++){
                ResponseSummary responseSummary = new ResponseSummary();
                responseSummary.setCounterId(counters.get(i));
                responseSummary.setHsCount(responseReportRepo.findCounterById(referenceId,counters.get(i),"hs"));
                responseSummary.setMsCount(responseReportRepo.findCounterById(referenceId,counters.get(i),"ms"));
                responseSummary.setLsCount(responseReportRepo.findCounterById(referenceId,counters.get(i),"ls"));
                responseSummary.setResponseTotal(responseReportRepo.findCounterTotal(referenceId,counters.get(i)));
                summary.add(responseSummary);
        }
        model.addObject("localAuthority",localAuthority);
        model.addObject("hsTotal",responseReportRepo.findResponseTotal(referenceId,"hs"));
        model.addObject("msTotal",responseReportRepo.findResponseTotal(referenceId,"ms"));
        model.addObject("lsTotal",responseReportRepo.findResponseTotal(referenceId,"ls"));

        model.addObject("summary",summary);

        model.setViewName("table");
        return model;

    }

    @RequestMapping(value ="/getResponseSummary", method = RequestMethod.POST)
    @ResponseBody
    public String getResponse(@RequestParam String counter){

        this.counter = counter;
        System.out.println("Counter: "+counter);
        return counter;
    }

    @RequestMapping(value="/table1", method=RequestMethod.GET)
    public ModelAndView table1() {
        ModelAndView model = new ModelAndView();

        List<ResponseReport> responseReports = responseReportRepo.findResponseByCounter(referenceId,counter);
        String localAuthority = localAuthorityRepo.findLocalAuthorityByReferenceId(referenceId);


        model.addObject("responses",responseReports);
        model.addObject("localAuthority",localAuthority);

        model.setViewName("table1");
        return model;
    }

    @RequestMapping(value ="/getTypeResponseSummary", method = RequestMethod.POST)
    @ResponseBody
    public String getResponse(@RequestParam String counter,@RequestParam String response){

        this.counter = counter;
        this.response = response;
        System.out.println("Counter: "+counter+" Response: "+response);
        return counter;
    }

    @RequestMapping(value = "/responseTable", method = RequestMethod.GET)
    public ModelAndView responseTypeTable(){

        ModelAndView model = new ModelAndView();

        List<ResponseReport> responseReports = responseReportRepo.findResponseByType(referenceId,counter,response);
        String localAuthority = localAuthorityRepo.findLocalAuthorityByReferenceId(referenceId);


        model.addObject("responses",responseReports);
        model.addObject("localAuthority",localAuthority);

        if(response.equals("hs")){
            model.setViewName("hstable");
        } else if(response.equals("ms")) {
            model.setViewName("mstable");
        } else {
            model.setViewName("lstable");
        }

        return model;
    }

    @RequestMapping("/user")
    public String user() {
        return "user";
    }

    @RequestMapping("/maps")
    public String map(){
        return "maps";
    }

    @RequestMapping(value="/getId", method = RequestMethod.POST)
    @ResponseBody
    public String getId(@RequestParam String referenceId) {

        this.referenceId = referenceId;
        logger.info("Receive request from {} referenceId ",referenceId);
        return referenceId;

    }

    @RequestMapping(value = "/dashboard",method = RequestMethod.GET)
    public ModelAndView dashboard(){
        ModelAndView model = new ModelAndView();
        String localAuthority = localAuthorityRepo.findLocalAuthorityByReferenceId(referenceId);
        logger.info("Receive request from {} Pradeshiya Sabha ",localAuthority);
        model.addObject("localAuthority",localAuthority);
        model.setViewName("dashboard");
        return model;
    }

   @RequestMapping(value = "/getSummary", method = RequestMethod.GET)
   @ResponseBody
    public Response getSummary() {
       List<String> counters = counterRepo.getCounterIdByLaId(referenceId);
       List<ResponseSummary> summary = new ArrayList<>();
       // String [] responseType = {"hs","ms","ls"};
       for (int i = 0; i < counters.size(); i++) {
           ResponseSummary responseSummary = new ResponseSummary();
           responseSummary.setCounterId(counters.get(i));
           responseSummary.setHsCount(responseReportRepo.findCounterById(referenceId, counters.get(i), "hs"));
           responseSummary.setMsCount(responseReportRepo.findCounterById(referenceId, counters.get(i), "ms"));
           responseSummary.setLsCount(responseReportRepo.findCounterById(referenceId, counters.get(i), "ls"));
           responseSummary.setResponseTotal(responseReportRepo.findCounterTotal(referenceId, counters.get(i)));
           summary.add(responseSummary);
       }
       Response response = new Response("Done", summary);
       return response;
   }

   /* @RequestMapping("/mstable")
    public String mstable(){
        return "mstable";
    }

    @RequestMapping("/lstable")
    public String lstable(){
        return "lstable";
    }*/



}
