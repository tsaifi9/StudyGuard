# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
users = User.create([{email: 'sunjay@calpoly.edu',password: 'password'},{email: 'ianmitchel@calpoly.edu',password: 'password'},{email: 'talha@calpoly.edu',password: 'password'},{email: 'spencer@calpoly.edu',password: 'password'},{email: 'max@calpoly.edu',password: 'password'},{email: 'sam@calpoly.edu',password: 'password'},{email: 'elaine@calpoly.edu',password: 'password'}])
groups = Group.create([{name: 'Close Friends'},{name: 'CPE101'},{name: 'Operating Systems'},{name:'CPE430 Programming Languages'},{name: 'IT'},{name: 'History 101'},{name: 'Biology 101'},{name: 'Chemistry 101'},{name:'Physics 101'}]) 
documents = Document.create([{name: 'Assignment 1',group: groups[0]},{name: 'Final Study Guide',group: groups[2]},{name: 'Midterm Study Guide',group: groups[3]},{name: 'Exam 2 Study Guide',group: groups[4]}])
questions = Question.create([{document:documents[0],text:'Given a set of input data, derive a set of equivalence classes.Derive the boundary value tests for each equivalence class.'},{document:documents[0],text:'Given an the philosophers algorithm, derive test cases that will achieve complete branch testing.'},{document:documents[0],text:'List the activities that occur during each phase of the testing lifecycle.'},{document:documents[0],text:'What is the appropriate change control policy for a given artifact in a modular control environment?'},{document:documents[0],text:'Write the detailed design for a method using the class pseudocode standard.'},{document:documents[2],text:'True or False, A court order is always required for the U.S. government to collect private data about its citizens.'},{document:documents[2],text:'True or False,Computer Scientists and Software Engineers know how to understand source code relatively easily.'},{document:documents[2],text:'True or False, Sara Baase is a computer scientist by training, not an ethicist.'},{document:documents[2],text:'True or False: RTFM is an acronym for read the f***ing manual in geek speak.'},{document:documents[2],text:'True or False: If software developers were given enough resources, they could always utilize statistical reliability models to estimate the reliability of their software and release that data to the consumer.'},{document:documents[2],text:'In the Therac-25 accidents, the engineers studying the machine after the first reported accident could not reproduce the precise error report as the alleged original error. They hardwired the machine to produce a similar result and made a minor design change to the machine in order to claim a five orders of magnitude improvement in overall safety.The adequate amount of safety required for the Therac-25 is an entirely scientific, descriptive question.'}])
answers = Answer.create([{question:questions[0],user:users[1],text:"An equivalence class is a set or range of input domain values that can reasonably be expected to cause “similar” responses from the application under test. 
For example, if the program outputs the absolute value of a number entered by the user.
Example:   
If the absolute value function produces the correct result for input of -36, is there any reason we would expect it to fail for -37?  No. These two values are candidates to be in the same equivalence class.
Thus, for the absolute value function, we define three equivalence classes: positive numbers, negative numbers, and zero. "},{question:questions[0],user:users[1],text:"An equivalence class is a test bed of range data values that can reasonably be used to compared classes of things that are similar"}])
votes=Vote.create([{answer:answers[0],user:users[4],value:1},{answer:answers[1],user:users[3],value:-1}])
