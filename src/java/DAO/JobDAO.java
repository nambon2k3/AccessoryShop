/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;
import DAO.DBContext;
import DAO.SliderDAO;
import Model.Job;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Legion
 */
public class JobDAO extends DBContext{
    private Connection connection;

    public JobDAO(Connection connection) {
        try {
            // Initialize the connection in the constructor
            connection = new DBContext().getConnection();
        } catch (Exception ex) {
            Logger.getLogger(SliderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public List<Job> getLatestJobs(int limit) throws SQLException {
        String sql = "SELECT * FROM Jobs ORDER BY postedDate DESC";
        List<Job> jobs = new ArrayList<>();

        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            try (ResultSet rs = statement.executeQuery()) {
                while (rs.next()) {
                    Job job = new Job();
                    job.setJobID(rs.getInt("jobID"));
                    job.setCompanyID(rs.getInt("companyID"));
                    job.setJobTitle(rs.getString("jobTitle"));
                    job.setJobDescription(rs.getString("jobDescription"));
                    job.setLocation(rs.getString("location"));
                    job.setSalaryRange(rs.getString("salaryRange"));
                    job.setJobType(rs.getString("jobType"));
                    job.setExperienceLevel(rs.getString("experienceLevel"));
                    job.setRequiredSkills(rs.getString("requiredSkills"));
                    job.setPostedDate(rs.getTimestamp("postedDate"));
                    job.setApplicationDeadline(rs.getTimestamp("applicationDeadline"));
                    job.setRemote(rs.getBoolean("isRemote"));

                    jobs.add(job);
                }
            }
        }

        return jobs;
    }
}
