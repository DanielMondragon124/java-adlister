//package dao;
//
//import java.sql.*;
//
//import com.mysql.cj.jdbc.Driver;
//
//import java.util.ArrayList;
//import java.util.List;
//
//public class EmployeesMySQLDao {
//    private Connection connection = null;
//
//    public EmployeesMySQLDao(Config config) {
//        try {
//            DriverManager.registerDriver(new Driver());
//            connection = DriverManager.getConnection(config.getUrl(), config.getUser(), config.getPassword());
//        } catch (SQLException e) {
//            throw new RuntimeException("error connecting to database", e);
//        }
//    }
//
//    public static <Employee> void main(String[] args) {
//        Config config = new Config();
//        EmployeesMySQLDao dao = new EmployeesMySQLDao(config);
//        List<Employee> employees = (List<Employee>) dao.all();
//        for (int i = 0; i <= 10; i++) {
//            Employee emp = employees.get(i);
//            System.out.println("emp.getFirstName() = " + emp.getFirstName());
//            System.out.println("emp.getLastName() = " + emp.getLastName());
//            System.out.println("emp.getEmpNo() = " + emp.getEmpNo());
//            System.out.println("---------");
//        }
//    }
//
//    public <Employee> List<Employee> all() {
//        List<Employee> employees = new ArrayList<>();
//        try {
//            Statement stmt = connection.createStatement();
//            ResultSet rs = stmt.executeQuery("SELECT * FROM employees.employees");
//            while (rs.next()) {
//                employees.add(new Employee(
//                        rs.getLong("emp_no"),
//                        rs.getString("first_name"),
//                        rs.getString("last_name"),
//                        rs.getString("gender").charAt(0),
//                        rs.getDate("birth_date"),
//                        rs.getDate("hire_date")
//                ));
//            }
//            return employees;
//        } catch (SQLException e) {
//            throw new RuntimeException(e);
//        }
//    }
//}