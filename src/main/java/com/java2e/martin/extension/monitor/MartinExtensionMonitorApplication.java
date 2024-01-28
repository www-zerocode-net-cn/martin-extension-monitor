package com.java2e.martin.extension.monitor;

import de.codecentric.boot.admin.server.config.EnableAdminServer;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * @author 狮少
 * @version 1.0
 * @date 2020/9/24
 * @describtion MartinExtensionMonitorApplication
 * @since 1.0
 */
@SpringBootApplication
@EnableAdminServer
public class MartinExtensionMonitorApplication {
    public static void main(String[] args) {
        SpringApplication.run(MartinExtensionMonitorApplication.class, args);
    }

}
