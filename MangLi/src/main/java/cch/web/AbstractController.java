package cch.web;

import cch.util.JsonResult;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;


public abstract class AbstractController {
	@SuppressWarnings("rawtypes")
	@ExceptionHandler
	@ResponseBody
	public JsonResult exp(Exception e){
		e.printStackTrace();
		return new JsonResult(e);
	}

}
