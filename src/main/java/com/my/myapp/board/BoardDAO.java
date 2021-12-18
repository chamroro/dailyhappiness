package com.my.myapp.board;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	public int insertBoard(BoardVO vo) {
		int result = sqlSession.insert("Board.insertBoard", vo);
		return result;
	}
	
	public int deleteBoard(int seq) {
		int result = sqlSession.delete("Board.deleteBoard", seq);
		return result;
	}
	
	public int updateBoard(BoardVO vo) {
		int result = sqlSession.update("Board.updateBoard", vo);
		return result;
	}
	
	class BoardRowMapper implements RowMapper<BoardVO> {
		@Override
		public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
			BoardVO vo = new BoardVO();
			vo.setSeq(rs.getInt("seq"));
			vo.setUserid(rs.getString("userid"));
			vo.setTitle(rs.getString("title"));
			vo.setPhoto(rs.getString("photo"));
			vo.setContent(rs.getString("content"));
			vo.setHappy(rs.getString("happy"));
			vo.setDay(rs.getString("day"));
			vo.setDate(rs.getString("date"));
			vo.setRegdate(rs.getDate("regdate"));
			return vo;
		}
	}

	public BoardVO getBoard(int seq) {
		BoardVO one = sqlSession.selectOne("Board.getBoard", seq);
		return one;
	}

	public List<BoardVO> getBoardList() {
		List<BoardVO> list = sqlSession.selectList("Board.getBoardList");
		return list;
	}

}
