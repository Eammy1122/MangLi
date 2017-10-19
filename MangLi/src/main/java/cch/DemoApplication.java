package cch;


import cch.dao.UserRepository;
import cch.entity.Person;
import cch.entity.User;
import cch.service.PersonService;
import cch.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Component;

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

		public void run(String... strings) throws Exception {
			System.out.println("hello spring boot args is" + strings.length);


		}
	}
}
