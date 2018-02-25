# 276-study-friends

Abstract

StudyBuddy SFU is an online organizational tool for students to find and set up study sessions with other students. The application will allow users to search for other students with whom to study based on their created profiles, courses currently being taken, etc. Users will also be able to post requests for study partners, be it for a certain subject or at a certain time and location, that can be seen by everyone. Students can, then, direct message each other to arrange a study time and location. Additionally, there will be a peer review system to help students find the ideal study partner.

Customer

Our target audience is all current SFU undergrad students. Particularly those who are looking to meet other SFU students, and/or study with other people would want to use this application

Competitive Analysis

Some of the competitors in this market are websites with similar concepts, such as MoocLab and StudyPals, and social media platforms, such as Facebook and Reddit. Here is a table to show the main differences between competitors and our program. 

StudyPlas
  Overview: Helps you to find study pals for specific tests, such as TOEFL and EPPP.
  Target: Anyone studying for these tests. 
  Structure: Organized by profiles. Search profiles by area and type of test.

MoocoLab
  Overview: Helps you find study buddies for university-level education.
  Target: Students from all over the world.
  Structure: Organized by profiles. Search profiles by area, language, major.

Social Media
  Overview: Occasionally students create pages to find study buddies.
  Target: Not specified 
  Structure: No clear structure to find study buddies.

StudyBuddy SFU
  Overview: Helps you find a study buddy for a specific course at SFU. 
  Target: SFU undergraduates.  
  Structure: Organized by profiles. Search profiles by Specific courses and area.


In addition to what’s listed above, our program will offer some functionalities that our competitors don’t. We will keep track of study histories (previous study time/buddies) so that it is easier to contact buddies from the past. We will also keep track of the appointments you make with your buddies. We will also implement a rating system to keep track of behaviors of the buddies (if they are do not show up, distracting, etc.). 


 
User Stories

Actors:
1.	Regular user: Create and search profiles and posts. Message other users, create appointments and confirm them. 
2.	Admin users: Handle inappropriate posts and behaviours. Able to delete posts and suspend regular users.  


Name:	Create New Account
Iteration	1
Actors	Regular user
Triggers/Preconditions:	New user wants to use StudyBuddy SFU
Actions/Postconditions:
1.	User selects “Login with Facebook”, or “Create a New Account”
2.	If user selects “Login with Facebook”, a new account is created based on email, and Facebook authentication
3.	If user selects “Create a New Account”, the following information is requested:
    a.	Name
    b.	Email
    c.	Password & Password Confirmation
4.	User clicks “Confirm”
5.	Email is sent to user to verify email address
6.	User selects link in email to verify email address
Acceptance Tests:	
1.	A new account is created, with the correct name, email, and password
2.	User is able to login with email and password
3.	Identical emails are not accepted by the application


Name:	Login to application
Iteration	1
Actors:	Regular user
Triggers/Preconditions:	Existing user wishes to use [application name]
Actions/Postconditions:	
1.	User enters email and password
2.	System verifies information
3.	If email and password does not match, the user is prompted to enter information again
4.	If email and password matches, user will enter their homepage
Acceptance Tests:
1.	Matching password and emails are accepted
2.	Non-matching passwords and emails are not accepted


Name:	Study Post Creation
Iteration	1
Actors:	Regular users
Triggers/Preconditions:	User wants to create a meeting to study with someone.
Actions/Postconditions:	
1.	User clicks on “create study post” button
2.	User picks a location to meet with other users
3.	User picks a date on which the user would like to study.
4.	User picks a time when the user would like to study
5.	User picks a course which the user would like to study for from a drop list of the courses they are taking
Acceptance Tests:	
1.	User is able to click “Create study post”
2.	User is able see spaces for four categories 
3.	User is able to provide the details 
4.	User is able to click “Confirm”
5.	User is able to see the post created


Name:	Study Post Search
Iteration	1
Actors:	Regular users
Triggers/Preconditions:	User wants to find a buddy to study with.
Actions/Postconditions:
1.	User clicks on “search study posts” button
2.	User can pick a location where they would like to meet to study
3.	User picks a date on which the user would like to study
4.	User picks a time when the user would like to study
5.	User picks a course which the user would like to study for from a drop list of the courses they are taking
6.	User scrolls through all study posts and clicks on any they are interested in
7.	User clicks on “request meeting” button when they find a suitable post
Acceptance Tests:	
1.	Information of other study posts are accurately displayed
2.	User can input filters (date, time, course, location)
3.	Filters accurately select the posts that the user wants
4.	“Request Meeting” button sends notification to other user


Name:	Direct Messaging
Iteration	1
Actors:	Regular users
Triggers/Preconditions:	User wants to privately message another user.
Actions/Postconditions:	
1.	User clicks on other user’s profile link
2.	User clicks “message” button
3.	User sends message
Acceptance Tests:	
1.	Messaging sends intended message
 

Name:	Update user profile
Iteration	2
Actors:	Regular user
Triggers/Preconditions:	User wants to change information on profile
Actions/Postconditions:	
1.	User selects “Profile”. Their profile is displayed
2.	User selects “Edit Profile”
3.	User may edit the following fields:
a.	Profile Picture (Attach image file)
b.	Current courses
c.	Biography
d.	Availability
e.	Location
4.	User selects “Save”
Acceptance Tests:	
1.	User is able to modify fields
2.	Modified information is saved
3.	All fields are optional and can be left blank


Name:	View Study History
Iteration	2
Actors:	Regular User
Triggers/Preconditions:	User wants to view study history
Actions/Postconditions	
1.	User selects “Study History”
2.	A list of all previous appointments is displayed with the following information:
    a.	Date
    b.	Study members’ name(s)
    c.	Course/Topic
3.	User may select other user’s names to view their profile
Acceptance Tests	
1.	User is able to see their own study history
2.	Study history is accurate
3.	Other user’s names are selectable and direct user to the select user’s profile


Name:	View list of current appointments
Iteration	2
Actors:	Regular users
Triggers/Preconditions:	User wants to see list of current appointments
Actions/Postconditions:	
1.	User selects “Current Appointments”
2.	A list of upcoming appointments is displayed in a list with the following information:
    a.	Date
    b.	Study Members’ Name(s) and if they have confirmed
    c.	Location
    d.	Course/Topic
Acceptance Tests	
1.	User is able to see current appointments
2.	Appointments listing is accurate
3.	Users can only view their own upcoming appointments


Name:	View another user’s profile
Iteration	2
Actors:	Regular users
Triggers/Preconditions:	User wants to find out what the availability of other users is.
Actions/Postconditions:	
1.	User clicks on other user’s profile link
2.	Selected user’s profile is displayed with the following information, if filled in:
    a.	Name
    b.	Profile picture
    c.	Biography
    d.	Location
    e.	Courses
    f.	Availability
Acceptance Tests:	
1.	User profile is viewable and accurate
2.	Link directs user to correct profile


Name:	Meeting Confirmation
Iteration	2
Actors:	Regular users
Triggers/Preconditions:	User receives a request from another user.
Actions/Postconditions:	
1.	User clicks on “profile” button
2.	User clicks on “my posts” button
3.	User scrolls down to the post in question.
4.	User clicks on “confirm” button
Acceptance Tests:	
1.	Meeting time and location are saved for both users to see.
2.	The user requesting is notified. 


Name:	User Review Viewing
Iteration	3
Actors:	Regular users
Triggers/Preconditions:	User wants to find out how other users reviewed a particular user.
Actions/Postconditions:	
1.	User clicks on other user’s profile link
2.	User scrolls down to see reviews
Acceptance Tests	
1.	Other user has reviews available on their profile


Name:	Remove post
Iteration	3
Actors:	Admin users
Triggers/Preconditions:	Admin user sees an unrelated post (e.g. tutoring ads) on thread and wants to remove it.
Actions/Postconditions:	
1.	User clicks on delete button
2.	System prompts user to confirm deletion and choose reason from drop-down menu (e.g. spam, inappropriate content, etc.)
3.	If confirmed, system deletes post
    a.	System checks for number of previous offenses
        i.	If number if less than 2, send warning email to offender
        ii.	If number is between 3-5 inclusive, send notification email to offender and begin 7 day account suspension
        iii.	If number is greater than 5, send notification email to offender stating their account has been banned and removed
Acceptance Tests:	
1.	User must click confirm on the prompt
2.	User must provide a reason for deletion
3.	System must send email notifying offender of the type of offence and what penalty (warning/suspension/removal)


Future Features

The following are features that are being considered for the future:
●	Users can provide reviews to each other after study meeting
●	Admins can ban or suspend users
●	Google Maps API displaying common study locations
