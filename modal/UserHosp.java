
package modal;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

 @Entity
 @Table(name="loginHosp")
public class UserHosp {
    
     @Id
   private String email;
     
   private String uname;
   private String pass;
   private String usertype;

   
    public UserHosp() {}
   
   public UserHosp(String uname,String pass,String email,String usertype)
   {
       this.uname=uname;
       this.pass=pass;
       this.email=email;
       this.usertype=usertype;
   }

    public String getUsertype() {
        return usertype;
    }

    public void setUsertype(String usertype) {
        this.usertype = usertype;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

  
    
    
}
