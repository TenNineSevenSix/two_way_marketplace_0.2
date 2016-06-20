# README

One page summary of your application including problem definition, solution.
A workflow diagram of the user journey/s.
Wireframes for at least 5 screens.
User stories for the whole application.
Entity Relationship Diagram (ERD).
Project plan and estimation.

## One Page Summary

Find my tutor is a web application designed to enable and enhance the relationships between tutors and students. With 'Find my tutor' a user can choose to become a tutor, student, or both. Once signed up they can search for tutors or students in their local area and/or in the area they would like to study. 'Find my tutor' involves a number of key features that will revolutionise the relationship between students and tutors.

Problem: How do students and tutors connect and track their process.
Solution: Provide an easy and mobile solution to connect tutors and students. Allow tutors to set and mark homework, while allowing students (and their parents if applicable) to track their homework and their results.

Payments:
* On signup users must choose between three options.
* Students signup for free, and can make full use of the application.
* Stripe is used to charge tutors for using the application.
* Tutors can choose from two different charges.
* For $3.99 per month a tutor can connect to three students and set up to fifty homework tasks for each student.
* For $14.99 per month a tutor can connect to an unlimited number of students and can set an unlimited number of homework tasks.

Search:
* Search for a student by area of study.
* Search for a tutor by area of study.
* Search for a student according to their area of study.
* Search for a tutor according to what they can teach.

Connect:
* Connections are made via a request for connection.
* Connections are approved by the requested party.
* Students can connect with a tutor of their choice.
* Tutors can connect with a student of their choice.
* Once students and tutors have both approved the connection setting homework can begin.

Homework:
* All connections are then setup for homework.
* Tutors set questions for students and provide a due date.
* Students then receive the homework from their connected tutors through the connections view.
* Students must then answer the question, and the homework submission day is recorded,
* Tutors can see when their student(s) have completed their homework and provide a mark and tutor comments.
* Students can then view the mark and comments for their answered homework.

## Project plan

* Add supervisor/parent role and user type to the app that allows students to have their parents monitor their progress.
* Add Google/Facebook login api
* Allow the homework section to be searchable and ordered according to whether completed and/or the due-date. This will be similar to how the messages was implemented.
* Add a community forum section.
