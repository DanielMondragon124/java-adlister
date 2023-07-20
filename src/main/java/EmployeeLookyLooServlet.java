import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

@WebServlet(name="EmployeeLookyLooServlet", urlPatterns = "/employee")
public class EmployeeLookyLooServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Employee emp= new Employee("Ana", "Armas", 'W',new Date("3-11-1895"),new
                Date());
        req.setAttribute("employee", emp);
        req.getRequestDispatcher("/employee.jsp").forward(req, resp);

    }
}
