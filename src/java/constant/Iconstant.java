package constant;

import java.io.InputStream;
import java.util.Properties;

public class Iconstant {
    public static final String GOOGLE_CLIENT_ID;
    public static final String GOOGLE_CLIENT_SECRET;
    public static final String GOOGLE_REDIRECT_URI;
    public static final String GOOGLE_GRANT_TYPE;
    public static final String GOOGLE_LINK_GET_TOKEN;
    public static final String GOOGLE_LINK_GET_USER_INFO;

    static {
        Properties props = new Properties();
        try {
            InputStream input = Iconstant.class.getClassLoader().getResourceAsStream("config.properties");
            props.load(input);

            GOOGLE_CLIENT_ID = props.getProperty("google.client_id");
            GOOGLE_CLIENT_SECRET = props.getProperty("google.client_secret");
            GOOGLE_REDIRECT_URI = props.getProperty("google.redirect_uri");
            GOOGLE_GRANT_TYPE = props.getProperty("google.grant_type");
            GOOGLE_LINK_GET_TOKEN = props.getProperty("google.link_get_token");
            GOOGLE_LINK_GET_USER_INFO = props.getProperty("google.link_get_user_info");

        } catch (Exception e) {
            throw new RuntimeException("Không thể load file config.properties", e);
        }
    }
}
