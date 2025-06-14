package lk.dilshanhesara.dilshan.model;


import java.sql.Timestamp;


public class Complaint {

    private int id;
    private String title;
    private String description;
    private String status;
    private String remarks;
    private int userId;
    private Timestamp crt;
    private Timestamp updt;
    private String username;

    public Complaint() {
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public Timestamp getCreatedAt() {
        return crt;
    }

    public void setCreatedAt(Timestamp createdAt) {
        this.crt = createdAt;
    }

    public Timestamp getUpdt() {
        return updt;
    }

    public void setUpdt(Timestamp updt) {
        this.updt = updt;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @Override
    public String toString() {
        return "Complaint{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", description='" + description + '\'' +
                ", status='" + status + '\'' +
                ", remarks='" + remarks + '\'' +
                ", userId=" + userId +
                ", createdAt=" + crt +
                ", updatedAt=" + updt +
                ", username='" + username + '\'' +
                '}';
    }
}