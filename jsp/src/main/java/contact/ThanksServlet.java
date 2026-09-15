import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/contact/thanks")
public class ThanksServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        request.setAttribute("onamae", request.getParameter("onamae"));
        request.setAttribute("mail_address", request.getParameter("mail_address"));
        request.setAttribute("sex", request.getParameter("sex"));
        request.setAttribute("cates", request.getParameterValues("cates"));
        request.setAttribute("pref", request.getParameter("pref"));
        request.setAttribute("message", request.getParameter("message"));

        request.getRequestDispatcher("/WEB-INF/jsp/thanks.jsp").forward(request, response);
    }
}
