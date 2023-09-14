package kr.ac.kopo.rate;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;

import kr.ac.kopo.rate.dao.RateDAO;

@Controller
public class RateController {
	
	@Autowired
	RateDAO dao;
	
	@GetMapping("/rateapi")
	public List<RateVO> getRateApi() throws JsonMappingException, JsonProcessingException{
		List<RateVO> rateList = dao.getRateList();
		
		return rateList;
	}
	
	@RequestMapping("/rate")
	public String getRate(Model model) throws JsonMappingException, JsonProcessingException {
		List<RateVO> rateList = dao.getRateList();
		model.addAttribute("rate",rateList);
		
		return "rate";
	}

}
