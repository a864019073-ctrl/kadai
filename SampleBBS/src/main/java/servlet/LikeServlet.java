package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.User;
import dao.Dao;

@WebServlet("/LikeServlet")
public class LikeServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        // 1. セッションからログインユーザー情報を取得
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        // ログインしていない場合はログイン画面へ
        if (user == null) {
            response.sendRedirect("LoginPageServlet");
            return;
        }

        // 2. パラメータから記事IDを取得
        String articleIdStr = request.getParameter("articleId");
        int articleId = Integer.parseInt(articleIdStr);
        
        // User.javaに合わせてString型で受け取る
        String userId = user.getId();

        // 3. DAOを呼び出して「いいね」を登録
        Dao dao = new Dao();
        dao.toggleLike(articleId, userId);

        // 4. 記事一覧画面（Servlet）にリダイレクトして戻る
        response.sendRedirect("ArticleListServlet");
    }
}