package myjobTest001;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Vector;

import myjobTest001.guestBean;
import myjobTest001.DBConnectionMgr;

public class guestMgr {

	private DBConnectionMgr pool;
	private final SimpleDateFormat SDF_DATE =
			new SimpleDateFormat("yyyy'년'  M'월' d'일' (E)");
	private final SimpleDateFormat SDF_TIME =
			new SimpleDateFormat("H:mm:ss");

	public guestMgr() {
		pool = DBConnectionMgr.getInstance();
	}

	//GuestBook Insert
	public void insertGuestBook(guestBean bean) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		try {
			con = pool.getConnection();
			sql = "INSERT guesttest(email, contents, ndate) VALUES (?, ?, now())";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bean.getEmail());
			pstmt.setString(2, bean.getContents());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
	}

	//GuestBook List : 비밀글은 본인 및 관리자만 볼 수 있음.
	public Vector<guestBean> listGuestBook(String id){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		Vector<guestBean> vlist = new Vector<guestBean>();
		try {
			con = pool.getConnection();
			sql = "SELECT * FROM tblguestbook "
					+ "WHERE id = ? OR secret = ? ORDER BY num DESC";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, "0");
			rs = pstmt.executeQuery();

			while(rs.next()) {
				guestBean bean = new guestBean();
				//모든 타입의 값은 getString으로 가능. 심지어 int형도 가능
				bean.setNum(rs.getInt("num")); //num
				bean.setEmail(rs.getString("email")); //id
				bean.setContents(rs.getString("contents")); //contents
				String tempDate = SDF_DATE.format(rs.getDate("ndate")); //날짜
				bean.setNdate(tempDate);
				vlist.addElement(bean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return vlist;
	}
}
