
package modal;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="patientDetails")
public class PatientAdd {
    
    @Id
    private String pid;
    
    private String pname;
    private String pdob;
    
    private String pgender;
    private String pemail;
    
    private String paddress;
    private String pcontact;
    private String pbed;
    
    private String pallergies;
    private String pmed;
    
    private String phistory;
    private String psummary;
    
    
   public PatientAdd(){}

    PatientAdd(String pid,String pname,String pdob,String pgender,String pemail,String paddress,String pcontact,String pbed,String pallergies,String pmed,String phistory,String psummary)
    {
       this.pid=pid;
       this.pname=pname;
       this.pdob=pdob;
       this.pgender=pgender;
       this.pemail=pemail;
       this.paddress=paddress;
       this.pcontact=pcontact;
       this.pbed=pbed;
       this.pallergies=pallergies;
       this.pmed=pmed;
       this.phistory=phistory;
       this.psummary=psummary;
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public String getPdob() {
        return pdob;
    }

    public void setPdob(String pdob) {
        this.pdob = pdob;
    }

    public String getPgender() {
        return pgender;
    }

    public void setPgender(String pgender) {
        this.pgender = pgender;
    }

    public String getPemail() {
        return pemail;
    }

    public void setPemail(String pemail) {
        this.pemail = pemail;
    }

    public String getPaddress() {
        return paddress;
    }

    public void setPaddress(String paddress) {
        this.paddress = paddress;
    }

    public String getPcontact() {
        return pcontact;
    }

    public void setPcontact(String pcontact) {
        this.pcontact = pcontact;
    }

    public String getPbed() {
        return pbed;
    }

    public void setPbed(String pbed) {
        this.pbed = pbed;
    }

    public String getPallergies() {
        return pallergies;
    }

    public void setPallergies(String pallergies) {
        this.pallergies = pallergies;
    }

    public String getPmed() {
        return pmed;
    }

    public void setPmed(String pmed) {
        this.pmed = pmed;
    }

    public String getPhistory() {
        return phistory;
    }

    public void setPhistory(String phistory) {
        this.phistory = phistory;
    }

    public String getPsummary() {
        return psummary;
    }

    public void setPsummary(String psummary) {
        this.psummary = psummary;
    }
    
    
}
