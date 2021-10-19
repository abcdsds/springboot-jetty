package accordion2.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DemoController {

  @GetMapping("/hello")
  public String hello() {
    return "hello";
  }

  @GetMapping("/sleep")
  public String sleep() throws InterruptedException {
    Thread.sleep(5000);
    return "sleep";
  }

  @GetMapping("/error")
  public String error() {
    throw new IllegalArgumentException("print error");
  }
}
