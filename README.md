## Project Structure

``` bash
/cpsc332_project_database/
├──project.sql                              # SQL schema for database
│
├──data.sql                                 # SQL datapoints for this instance
│
├──query.sql                                # SQL queries tests
│
├──index.html                               # Main driver for all submit forms for queries
│
├── /src/
│   ├── /controller/
│   │    ├── get_course_section.php         # Redirect link when user wants to get sections of a course
│   │    ├── get_course.php                 # Redirect link when user wants to get courses they took
│   │    ├── get_grade.php                  # Redirect link when user want to view summarized list of grades in a section
│   │    ├── get_prof_section.php           # Redirect link when user want to view the sections they are teaching
│   ├── /controller/
│   │    ├── Professor.php                  # Implemented SQL queries for professor
│   │    └── Student.php                    # Implemented SQL queries for student
```