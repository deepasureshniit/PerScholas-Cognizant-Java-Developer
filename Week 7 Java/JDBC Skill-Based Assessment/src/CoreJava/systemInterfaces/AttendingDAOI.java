package CoreJava.systemInterfaces;

import java.sql.SQLException;
import java.util.List;

import CoreJava.CustomExceptions.StudentRegistrationException;
import CoreJava.Models.Attending;
import CoreJava.Models.Course;
import CoreJava.Models.Student;

public interface AttendingDAOI {
	public int registerStudentToCourse(Student student, Course course) throws StudentRegistrationException, SQLException;
	
	public List<Attending> getStudentCourse(int student_id) throws SQLException;
}
