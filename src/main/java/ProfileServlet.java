//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//import java.io.IOException;
//
//@WebServlet(name = "ProfileServlet", urlPatterns = "/profile")
//public class ProfileServlet extends HttpServlet {
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, IOException, ServletException {
//        HttpSession session = request.getSession(false);
//        if (session != null && session.getAttribute("user") != null) {
//            request.getRequestDispatcher("/profile.jsp").forward(request, response);
//        } else {
//            response.sendRedirect("/login");
//        }
//    }
//}