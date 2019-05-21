package myjobTest001;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import myjobTest001.productBean;

public class productMgr {

	private DBConnectionMgr pool;
/*	private static final String UPLOAD = "C:/project_jsp/projectTest001/WebContent/img/";
	private static final String ENCTYPE = "EUC-KR";
	private static final int MAXSIZE = 10*1024*1024;
*/
	public productMgr() {
		pool = DBConnectionMgr.getInstance();
	}
	
		public productBean getProduct(int num) {
			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql = null;
			productBean bean = new productBean();
			try {
				con = pool.getConnection();
				sql = "SELECT * FROM mintest WHERE num = ?";
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, num);
				rs = pstmt.executeQuery();
				if (rs.next()) {
					bean.setNum(rs.getInt("num"));
					bean.setProprice(rs.getInt("proprice"));
					bean.setProname(rs.getString("proname"));
					bean.setProimage(rs.getString("proimage"));
					bean.setProdate(rs.getString("prodate"));
					bean.setPatron(rs.getInt("patron"));
					bean.setGoalprice(rs.getInt("goalprice"));
					bean.setFindate(rs.getString("findate"));
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				pool.freeConnection(con, pstmt, rs);
			}
			return bean;
		}
}
