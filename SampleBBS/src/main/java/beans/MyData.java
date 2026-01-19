package beans;
import java.sql.Timestamp;
public class MyData {
	private int id;
	private String data;
	private Timestamp entryDatetime;
	
	public MyData() {
		
	}
	public MyData(int id, String data, Timestamp entryDatetime) {
		super();
		this.id = id;
		this.data = data;
		this.entryDatetime = entryDatetime;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public Timestamp getEntryDatetime() {
		return entryDatetime;
	}
	public void setEntryDatetime(Timestamp entryDatetime) {
		this.entryDatetime = entryDatetime;
	}
	

}
