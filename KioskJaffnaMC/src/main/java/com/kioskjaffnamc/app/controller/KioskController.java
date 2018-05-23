package com.kioskjaffnamc.app.controller;

import com.kioskjaffnamc.app.model.ResponseReport;
import com.kioskjaffnamc.app.model.User;
import com.kioskjaffnamc.app.repository.CounterRepo;
import com.kioskjaffnamc.app.repository.LocalAuthorityRepo;
import com.kioskjaffnamc.app.repository.ResponseReportRepo;
import com.kioskjaffnamc.app.repository.UserRepo;
import com.kioskjaffnamc.app.util.Ethnicity;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;


@Controller
public class KioskController {

    @Autowired
    ResponseReportRepo responseReportRepo;

    @Autowired
    CounterRepo counterRepo;

    @Autowired
    LocalAuthorityRepo localAuthorityRepo;

    @Autowired
    UserRepo userRepo;

    private static final SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss");
    private final static Logger logger = LoggerFactory.getLogger(KioskController.class);

    @RequestMapping("/")
    public String handleRequest(Model model) {


        return "index";

    }



    @RequestMapping(value = "/getResponse", method = RequestMethod.POST)
    @ResponseBody
    public String getResponse(@RequestParam String responseId, @RequestParam String title,
           @RequestParam String gender ,@RequestParam String counter)
    {


        Timestamp timestamp = new Timestamp(System.currentTimeMillis());

       // String laId = localAuthorityRepo.findReferenceIdByName("Kathirkamam");
        ResponseReport report = new ResponseReport();
        report.setQuestionId("q1");
        report.setResponse(responseId);
        report.setCounterId(counter);
        report.setLaId(title);
        report.setEthnicity(Ethnicity.TAMILS.name());
        report.setGender(gender);
        report.setAgeCategory("20-35");
        report.setDate(sdf.format(timestamp));

        responseReportRepo.save(report);

        logger.info("New response [{}] added to kiosk ", report.toString());

        return responseId;
    }
    @RequestMapping(value="/login",method = RequestMethod.POST)
    @ResponseBody
    public String login(@RequestParam String userName, @RequestParam String password){
        User user = new User();
        user.setUserName(userName);
        user.setPassword(password);
        userRepo.save(user);
        return "home";
    }

    @RequestMapping("/sayThankyou")
    public String sendResponse() {
        return "index1";
    }
}
