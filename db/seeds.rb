# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
users = User.create([
      {email: 'ianmitchell@calpoly.edu',name:'Ian Mitchell',password: 'password'},
      {email: 'talha@calpoly.edu',name:'Talha Saifi',password: 'password'},
      {email: 'sam@calpoly.edu',name:'Sam',password: 'password'},
      {email: 'spencer@calpoly.edu',name:'Spencer',password: 'password'},
      {email: 'max@calpoly.edu',name:'Max',password: 'password'},
      {email: 'sunjay@calpoly.edu',name:'Sunjay',password: 'password'},
      {email: 'elaine@calpoly.edu',name:'Elaine',password: 'password'}])
groups = Group.create([{name: 'History 101'},{name: 'Biology 101'},{name: 'Sociology 101'},{name:'Psychology 101'},{name: 'CPE101'},{name:'CPE430'},{name: 'Close Friends'},{name: 'IT'},{name:'Global Applications'}])
documents = Document.create([{name: 'Midterm Study Guide',group: groups[0]},{name: 'Final Exam Study Guide',group: groups[0]},{name: 'Final Project',group: groups[0]},{name: 'Final Study Guide',group: groups[1]},{name: 'Midterm Study Guide',group: groups[1]},{name: 'Final Exam Study Guide',group: groups[2]},{name: 'Midterm Study Guide',group: groups[3]},{name: 'Final Exam Study Guide',group: groups[3]},{name: 'Midterm Study Guide',group: groups[4]},{name: 'Final Exam Study Guide',group: groups[4]}])
groups[0].users << users[0]
groups[1].users << users[0]
groups[2].users << users[0]
groups[3].users << users[0]
groups[4].users << users[0]
groups[5].users << users[0]
groups[6].users << users[0]
groups[7].users << users[0]
groups[0].users << users[1]
groups[1].users << users[1]
groups[2].users << users[1]
groups[3].users << users[1]
groups[4].users << users[1]
groups[5].users << users[1]
groups[6].users << users[1]
groups[7].users << users[1]
groups[0].users << users[2]
groups[1].users << users[2]
groups[2].users << users[2]
groups[3].users << users[2]
groups[4].users << users[2]
groups[5].users << users[2]
groups[6].users << users[2]
groups[7].users << users[2]
groups[0].users << users[3]
groups[1].users << users[3]
groups[2].users << users[3]
groups[3].users << users[3]
groups[4].users << users[3]
groups[5].users << users[3]
groups[6].users << users[3]
groups[7].users << users[3]
groups[0].users << users[4]
groups[1].users << users[4]
groups[2].users << users[4]
groups[3].users << users[4]
groups[4].users << users[4]
groups[5].users << users[4]
groups[6].users << users[4]
groups[7].users << users[4]
groups[0].users << users[5]
groups[1].users << users[5]
groups[2].users << users[5]
groups[3].users << users[5]
groups[4].users << users[5]
groups[5].users << users[5]
groups[6].users << users[5]
groups[7].users << users[5]
groups[0].users << users[6]
groups[1].users << users[6]
groups[2].users << users[6]
groups[3].users << users[6]
groups[4].users << users[6]
groups[5].users << users[6]
groups[6].users << users[6]
groups[7].users << users[6]
questions = Question.create([{document:documents[0],text:'Given a set of input data, derive a set of equivalence classes. Derive the boundary value tests for each equivalence class.'},{document:documents[0],text:'Given an the philosophers algorithm, derive test cases that will achieve complete branch testing.'},{document:documents[0],text:'List the activities that occur during each phase of the testing lifecycle.'},{document:documents[0],text:'What is the appropriate change control policy for a given artifact in a modular control environment?'},{document:documents[0],text:'Write the detailed design for a method using the class pseudocode standard.'},{document:documents[1],text:'True or False, A court order is always required for the U.S. government to collect private data about its citizens.'},{document:documents[1],text:'True or False,Computer Scientists and Software Engineers know how to understand source code relatively easily.'},{document:documents[1],text:'True or False, Sara Baase is a computer scientist by training, not an ethicist.'},{document:documents[1],text:'True or False: RTFM is an acronym for read the f***ing manual in geek speak.'},{document:documents[1],text:'True or False: If software developers were given enough resources, they could always utilize statistical reliability models to estimate the reliability of their software and release that data to the consumer.'},{document:documents[1],text:'In the Therac-25 accidents, the engineers studying the machine after the first reported accident could not reproduce the precise error report as the alleged original error. They hardwired the machine to produce a similar result and made a minor design change to the machine in order to claim a five orders of magnitude improvement in overall safety.The adequate amount of safety required for the Therac-25 is an entirely scientific, descriptive question.'}])
answers = Answer.create([{question:questions[0],user:users[1],text:'An equivalence class is a set or range of input domain values that can reasonably be expected to cause comparable responses from the application under test.
For example, if the program outputs the absolute value of a number entered by the user.
Example: If the absolute value function produces the correct result for input of -36, is there any reason we would expect it to fail for -37?  No. These two values are candidates to be in the same equivalence class. Thus, for the absolute value function, we define three equivalence classes: positive numbers, negative numbers, and zero. '},{question:questions[0],user:users[0],text:'An equivalence class is a test bed of range data values that can reasonably be used to compared classes of things that are similar'},{question:questions[1],user:users[1],text:'Equivalence partitioning (also called Equivalence Class Partitioning or ECP[1]) is a software testing technique that divides the input data of a software unit into partitions of equivalent data from which test cases can be derived. In principle, test cases are designed to cover each partition at least once. This technique tries to define test cases that uncover classes of errors, thereby reducing the total number of test cases that must be developed. An advantage of this approach is reduction in the time required for testing a software due to lesser number of test cases.'},{question:questions[4],user:users[1],text:'True'},{question:questions[3],user:users[1],text:'True'}])
votes=Vote.create([{answer:answers[0],user:users[4],value:1},{answer:answers[1],user:users[3],value:-1}])
