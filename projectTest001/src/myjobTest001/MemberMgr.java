package myjobTest001;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class MemberMgr {

	private DBConnectionMgr pool;
	private static final String UPLOAD = "C:/Jsp/eclipse-workspace/myapp/WebContent/example/data/";
	private static final String ENCTYPE = "EUC-KR";
	private static final int MAXSIZE = 10*1024*1024;

	public MemberMgr() {
		pool = DBConnectionMgr.getInstance();
	}

	public boolean insertMember(MemberBean bean) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		boolean flag = false;
		try {
			con = pool.getConnection();
			sql = "insert exmember(name, email, pwd, partronrank) values(?,?,?,0)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bean.getName());
			pstmt.setString(2, bean.getEmail());
			pstmt.setString(3, bean.getPwd());
			if(pstmt.executeUpdate()==1)
				flag = true;			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return flag;
	}

	public boolean loginMember(String email, String pwd) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		boolean flag = false;
		try {
			con = pool.getConnection();
			sql = "select email from exmember where email =? and pwd=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, email);
			pstmt.setString(2, pwd);
			rs = pstmt.executeQuery();
			flag = rs.next();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return flag;

	}

	public MemberBean getMember(String email) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		MemberBean bean = new MemberBean();
		try {
			con = pool.getConnection();
			sql = "select * from exmember where email=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				bean.setName(rs.getString("name"));
				bean.setEmail(rs.getString("email"));
				bean.setPwd(rs.getString("pwd"));
				bean.setIntro(rs.getString("Intro"));
				bean.setWebsite(rs.getString("Website"));
				bean.setTel(rs.getString("tel"));
				bean.setImage(rs.getString("image"));
				bean.setPatronrank(rs.getInt("patronrank"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return bean;
	}

	public MemberBean getProfile(String email) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		MemberBean bean = new MemberBean();
		try {
			con = pool.getConnection();
			sql = "SELECT * FROM exmember WHERE email = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				bean.setEmail(rs.getString("email"));
				bean.setName(rs.getString("name"));
				bean.setPwd(rs.getString("pwd"));//상품가격
				bean.setIntro(rs.getString("intro"));//상품상세설명
				bean.setWebsite(rs.getString("website"));
				bean.setTel(rs.getString("tel"));//상품제고
				bean.setImage(rs.getString("image"));//상품이미지
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return bean;
	}

	public boolean updateProfile(HttpServletRequest req) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		boolean flag = false;
		try {
			MultipartRequest multi = 
					new MultipartRequest(req, UPLOAD, MAXSIZE, ENCTYPE, new DefaultFileRenamePolicy());
			con = pool.getConnection();
			if (multi.getFilesystemName("image") == null) { //파일은 수정 안함.
				sql = "UPDATE exmember SET pwd = ?, intro = ?, website = ?, tel = ? WHERE email = ?";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, multi.getParameter("pwd"));
				pstmt.setString(2, multi.getParameter("intro"));
				pstmt.setString(3, multi.getParameter("website"));
				pstmt.setString(4, multi.getParameter("tel"));
				pstmt.setString(5, multi.getParameter("email"));
			}else {
				con = pool.getConnection();
				sql = "update exmember set pwd=?, intro=?, website=?, tel=?, image=? where email=?";
				pstmt = con.prepareStatement(sql);
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, multi.getParameter("pwd"));
				pstmt.setString(2, multi.getParameter("intro"));
				pstmt.setString(3, multi.getParameter("website"));
				pstmt.setString(4, multi.getParameter("tel"));
				pstmt.setString(5, multi.getFilesystemName("image"));
				pstmt.setString(6, multi.getParameter("email"));
			}
			if (pstmt.executeUpdate() == 1) {
				flag = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return flag;
	}

	///////// 방명록을 위한 mgr//////////////////
	Vector<MemberBean> listGuestBook(String email, String patronrank){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		Vector<MemberBean> vlist = new Vector<MemberBean>();
		try {
			con = pool.getConnection();
//			if (patronrank.equals("1")) { //admin일때
//				sql = "SELECT * FROM tblguestbook ORDER BY num DESC";
//				pstmt = con.prepareStatement(sql);	
//			}else { //aaa가 로그인
//				sql = "SELECT * FROM tblguestbook "
//						+ "WHERE id = ? OR secret = ? ORDER BY num DESC";
//				pstmt = con.prepareStatement(sql);
//				pstmt.setString(1, id);
//				pstmt.setString(2, "0");
//			}
			rs = pstmt.executeQuery();

			while(rs.next()) {
				MemberBean bean = new MemberBean();
				//모든 타입의 값은 getString으로 가능. 심지어 int형도 가능
				bean.setName(rs.getString("name"));
				bean.setEmail(rs.getString("email"));
				bean.setPwd(rs.getString("pwd"));
				bean.setPatronrank(rs.getInt("patronrank"));
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
