# SQL Developer Technical Test

## Introduction
This repository contains the SQL scripts and explanations for the SQL Developer Technical Test. The test involves designing a database schema, writing and optimizing SQL queries, and creating stored procedures and views.

## Database Schema Design and Optimization

### 1. Database Schema
The database schema consists of four tables: `surveys`, `questions`, `responses`, and `users`.

#### Tables
- `surveys`: Stores survey details.
  - `survey_id` (INT, Primary Key)
  - `survey_name` (VARCHAR)
  - `created_at` (TIMESTAMP)

- `questions`: Stores questions related to surveys.
  - `question_id` (INT, Primary Key)
  - `survey_id` (INT, Foreign Key)
  - `question_text` (TEXT)

- `responses`: Stores responses from users.
  - `response_id` (INT, Primary Key)
  - `user_id` (INT, Foreign Key)
  - `question_id` (INT, Foreign Key)
  - `response_text` (TEXT)

- `users`: Stores user details.
  - `user_id` (INT, Primary Key)
  - `user_name` (VARCHAR)
  - `user_email` (VARCHAR, Unique)

### 2. Relationships
- Each survey can have multiple questions.
- Each user can respond to multiple questions in a survey.

### 3. Indexes
Indexes are added to optimize query performance.

## Explanation

### Database Schema Design and Optimization
The schema is designed to normalize the data and maintain referential integrity. Foreign keys are used to enforce relationships between tables, and indexes are added to improve query performance. The surveys table stores information about each survey, the questions table contains the questions for each survey, the users table stores user information, and the responses table stores user responses to the questions. This design ensures efficient storage and retrieval of survey data.

### Query Writing, Optimization, and Advanced Analysis
Basic queries are written to retrieve relevant survey data, such as all responses for a specific survey. Advanced queries are designed to perform calculations and aggregations, providing insights into survey responses. For example, calculating the average score for each survey and finding the top 3 users with the highest average response scores. Indexes are utilized to optimize query performance by speeding up the retrieval of data.

### Stored Procedures and Views
A stored procedure is created to calculate survey scores based on responses. The procedure takes a survey ID as input and returns the survey name, question text, response text, and calculated score for each response. The scoring algorithm converts response text to a numeric score using CAST. A view is designed to simplify access to survey response data, including calculated scores. This view can be used in queries to easily retrieve and analyze survey response scores.

### Instructions to Run the Code
    Clone the repository to your local machine.
    Open the SQL scripts in a MySQL client (e.g., MySQL Workbench).
    Execute the scripts in the following order:
        create_database_and_tables.sql
        insert_sample_data.sql
        create_indexes.sql
        queries.sql
        stored_procedure_and_view.sql
    Review the results and verify the outputs of the queries, stored procedure, and view.
