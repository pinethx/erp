package erp.dto;

import java.util.Arrays;
import java.util.Date;

public class ErpDetail {
	private int empNo;
	private boolean gender;
	private Date hiredate;
	private byte[] pic;

	@Override
	public String toString() {
		return "ErpDetail [empNo=" + empNo + ", gender=" + gender + ", hiredate=" + hiredate + ", pic="
				+ Arrays.toString(pic) + "]";
	}

	public int getEmpNo() {
		return empNo;
	}

	public void setEmpNo(int empNo) {
		this.empNo = empNo;
	}

	public boolean isGender() {
		return gender;
	}

	public void setGender(boolean gender) {
		this.gender = gender;
	}

	public Date getHiredate() {
		return hiredate;
	}

	public void setHiredate(Date hiredate) {
		this.hiredate = hiredate;
	}

	public byte[] getPic() {
		return pic;
	}

	public void setPic(byte[] pic) {
		this.pic = pic;
	}
}
