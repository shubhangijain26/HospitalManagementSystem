
package modal;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="doctorDetails")
public class DoctorAdd {
    
     @Id
    private String did;
    
    private String dname;
    
    private String dgender;
    private String demail;
    
    private String daddress;
    private String dcontact;
    private String ddept;
    
    
    public DoctorAdd(){}

    DoctorAdd(String did,String dname,String dgender,String demail,String daddress,String dcontact,String ddept)
    {
       this.did=did;
       this.dname=dname;
       this.dgender=dgender;
       this.demail=demail;
       this.daddress=daddress;
       this.dcontact=dcontact;
       this.ddept=ddept;
    }

    public String getDid() {
        return did;
    }

    public void setDid(String did) {
        this.did = did;
    }

    public String getDname() {
        return dname;
    }

    public void setDname(String dname) {
        this.dname = dname;
    }

    public String getDgender() {
        return dgender;
    }

    public void setDgender(String dgender) {
        this.dgender = dgender;
    }

    public String getDemail() {
        return demail;
    }

    public void setDemail(String demail) {
        this.demail = demail;
    }

    public String getDaddress() {
        return daddress;
    }

    public void setDaddress(String daddress) {
        this.daddress = daddress;
    }

    public String getDcontact() {
        return dcontact;
    }

    public void setDcontact(String dcontact) {
        this.dcontact = dcontact;
    }

    public String getDdept() {
        return ddept;
    }

    public void setDdept(String ddept) {
        this.ddept = ddept;
    }
    
    
    
}
