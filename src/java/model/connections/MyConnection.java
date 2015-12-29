package model.connections;

/**
 *
 * @author antonio
 */
public class MyConnection {
    private String Driver;
    private String LinkNetbeans;
    private String LinkServerBeta;
    private String LinkServer;
    private String UserNetbeans;
    private String UserServerBeta;
    private String UserServer;
    private String PassNetbeans;
    private String PassServerBeta;
    private String PassServer;

    public MyConnection() {
        this.Driver = "com.mysql.jdbc.Driver";
        this.LinkNetbeans = "jdbc:mysql://localhost/comments";
        this.LinkServer ="jdbc:mysql://127.9.95.130:3306/comments";
        this.LinkServerBeta = "jdbc:mysql://127.7.83.130:3306/comments";
        this.PassNetbeans = "root";
        this.PassServer ="c6KwT3Lh_pyY";
        this.PassServerBeta ="D4w9c-b-UThW";
        this.UserNetbeans ="root";
        this.UserServer = "adminQrbg9K8";
        this.UserServerBeta ="adminMJz7kCM";
    }

    
    public String getDriver() {
        return Driver;
    }

    public void setDriver(String Driver) {
        this.Driver = Driver;
    }

    public String getLinkNetbeans() {
        return LinkNetbeans;
    }

    public void setLinkNetbeans(String LinkNetbeans) {
        this.LinkNetbeans = LinkNetbeans;
    }

    public String getLinkServerBeta() {
        return LinkServerBeta;
    }

    public void setLinkServerBeta(String LinkServerBeta) {
        this.LinkServerBeta = LinkServerBeta;
    }

    public String getLinkServer() {
        return LinkServer;
    }

    public void setLinkServer(String LinkServer) {
        this.LinkServer = LinkServer;
    }

    public String getUserNetbeans() {
        return UserNetbeans;
    }

    public void setUserNetbeans(String UserNetbeans) {
        this.UserNetbeans = UserNetbeans;
    }

    public String getUserServerBeta() {
        return UserServerBeta;
    }

    public void setUserServerBeta(String UserServerBeta) {
        this.UserServerBeta = UserServerBeta;
    }

    public String getUserServer() {
        return UserServer;
    }

    public void setUserServer(String UserServer) {
        this.UserServer = UserServer;
    }

    public String getPassNetbeans() {
        return PassNetbeans;
    }

    public void setPassNetbeans(String PassNetbeans) {
        this.PassNetbeans = PassNetbeans;
    }

    public String getPassServerBeta() {
        return PassServerBeta;
    }

    public void setPassServerBeta(String PassServerBeta) {
        this.PassServerBeta = PassServerBeta;
    }

    public String getPassServer() {
        return PassServer;
    }

    public void setPassServer(String PassServer) {
        this.PassServer = PassServer;
    }
   
}
