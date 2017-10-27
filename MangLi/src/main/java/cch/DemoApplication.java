package cch;


import cch.dao.ResumeRepository;
import cch.dao.SkillRepository;
import cch.dao.UserRepository;
import cch.entity.Resume;
import cch.entity.Skill;
import cch.service.ResumeService;
import cch.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Component;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@SpringBootApplication
public class DemoApplication {

	public static void main(String[] args) {

		SpringApplication.run(DemoApplication.class, args);

	}

	@Component
	public static class NoWebRunner implements CommandLineRunner {

		@Autowired
		private UserRepository userRepository;

		@Autowired
		private UserService userService;

		@Autowired
		private SkillRepository skillRepository;

		@Autowired
		private ResumeRepository resumeRepository;

		@Autowired
		private ResumeService resumeService;

		public void run(String... strings) throws Exception {
			System.out.println("hello spring boot args is" + strings.length);

			Resume r = resumeService.findByUserId(10001);

//			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm");
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
			String time = df.format(new Date());
			String[] ti = time.split("-");
			System.out.println(ti[0]);

		}
	}
}
