import java.io.FileWriter;
import java.io.IOException;

public class HelloDevOps {
    public static void main(String[] args) throws IOException {
        System.out.println("Hello, DevOps! Version 2");
        FileWriter writer = new FileWriter("/app/data/log.txt", true);
        writer.write("Container ran at: " + System.currentTimeMillis() + "\n");
        writer.close();
        System.out.println("Logged run to /app/data/log.txt");
    }
}
