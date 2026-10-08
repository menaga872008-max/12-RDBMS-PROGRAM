create database mega;
use mega;
 DEPARTMENT ||--o{ STUDENT : "has"

    FACULTY ||--o{ COURSE : "handles"

    STUDENT ||--o{ ENROLLMENT : "enrolls"
    COURSE ||--o{ ENROLLMENT : "has"

    DEPARTMENT {
        int DepartmentID PK
        string DepartmentName
    }

    STUDENT {
        int StudentID PK
        string StudentName
        int DepartmentID FK
    }

    FACULTY {
        int FacultyID PK
        string FacultyName
    }

    COURSE {
        int CourseID PK
        string CourseName
        int FacultyID FK
    }

    ENROLLMENT {
        int EnrollmentID PK
        int StudentID FK
        int CourseID FK
    }


