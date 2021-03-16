package com.example.restservice;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

public class GreetingTestIT {

    @Test
    public void testClassCreating() {
        String content = "Hello World";
        long id = 1;
        Greeting greeting = new Greeting(id, content);
        Assertions.assertEquals(greeting.getContent(), content);
        Assertions.assertEquals(greeting.getId(), id);

    }
}
