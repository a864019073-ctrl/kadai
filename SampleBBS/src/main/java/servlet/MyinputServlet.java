package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.MyData;
import dao.Dao;

/**
 * Servlet implementation class MyinputServlet
 */
@WebServlet("/MyinputServlet")
public class MyinputServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyinputServlet() {
        super();
    }

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
		
		//requestから，"id"というnameの値を取得
		String data = request.getParameter("data");
		
		//Daoを使用してDBにdataを保存
		Dao dao =new Dao();
		
		dao.insertMyData(data);
		
		//コンソールにdataを表示
		
		System.out.println("data="+ data);
		
		List<MyData>mdList=dao.getMyDataList();
		
		for(int i=0;i<mdList.size();i++) {
			System.out.println(mdList.get(i).getId()
					+mdList.get(i).getData()
					+mdList.get(i).getEntryDatetime()
					);
					
					
		}
	}

}
