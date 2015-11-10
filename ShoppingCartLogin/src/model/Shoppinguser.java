package model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.*;


/**
 * The persistent class for the SHOPPINGUSER database table.
 * 
 */
@Entity
@Table(name="SHOPPINGUSER",schema="TESTUSERDB")
@NamedQuery(name="Shoppinguser.findAll", query="SELECT s FROM Shoppinguser s")
public class Shoppinguser implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@SequenceGenerator(name="SHOPPINGUSER_USERID_GENERATOR",sequenceName="SEQ_SHOPPINGUSER",allocationSize=1)
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="SHOPPINGUSER_USERID_GENERATOR")
	@Column(name="USER_ID")
	private long userId;

	private String fullname;

	private String password;

	private String username;
	private Shoppinguser shoppinguser; 
	private List<Lineitem> lineitems;

	public Shoppinguser() {
	}

	public long getUserId() {
		return this.userId;
	}

	public void setUserId(long userId) {
		this.userId = userId;
	}

	public String getFullname() {
		return this.fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public List<Lineitem> getLineitems() {
		System.out.println("inside getLineitems()");
		return this.lineitems;
	}

	public void setLineitems(List<Lineitem> lineitems) {
		this.lineitems = lineitems;
	}

	 public Lineitem addLineitem(Lineitem lineitem){
     	getLineitems().add(lineitem);
     	lineitem.setShoppinguser(this);
     	return lineitem;
     }
     
     
      public Lineitem removeLineitem(Lineitem lineitem){
     	getLineitems().remove(lineitem);
     	lineitem.setShoppinguser(null);
     	return lineitem;
     }
}