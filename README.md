### WEB DEVELOPER CODE TEST 
### OVERVIEW 

1. Code Test Description 
Please interface with the Oxford Dictionary via their REST API using Ruby on Rails. We are looking for a simple  page that allows a person to enter a term and for the app to then pull the definition of that term from the Oxford  Dictionary. The code should be able to be executed without throwing a rails exception visible to the user, this is to  include handling API timeout issues, a user-friendly message should be provided in cases of rails exceptions (and the  exception logged, with all request parameters and response parameters). 
The API documentation can be found here: https://developer.oxforddictionaries.com/documentation. The code will  also need to be able to handle all of the various status codes that could be returned by the API  (https://developer.oxforddictionaries.com/documentation/response-codes).

2. Reason for this Test 
This is a basic API consumption project, please understand there really is no right or wrong way to accomplish this  but it does help us understand how you approach specific design aspects, particular to API’s which is what we work  with most. We will go over the code, but mainly our conversation will revolve around your thought process of why you  chose to develop your client in the way that you did. We will talk about programming paradigms such as; code style,  object-oriented programming, methodology chosen and how you utilized ruby’s expressive power to handle the task  at hand.

3. High-Level Requirements 
The new app should include the following: 
• Ability to enter a dictionary term, via form page 
• Ability to retrieve the corresponding definition for the term entered 
• Ability to maintain a list of the last 5 terms searched 
• Ability to handle exception errors, gracefully 
• Ability to log such exceptions to assist in troubleshooting 
HTTP status codes, like HTTP verbs, have well-defined meanings although it is so easy just to return 404 or Not Found, 200 or OK, and 500 or Internal Server Error. Use status codes that make sense, for the sake of other developers. While it is tempting to simply return 200 (OK), 404 (Not Found), and 500 (Internal Server Error), HTTP status codes — very much like HTTP verbs — have well-defined meanings. For the benefit of other developers, use status codes that make sense. For example, if we have a uniqueness constraint on Project name, we should return a conflict status on creation attempt for name clashes to let the developers understand where they went wrong.

The exception to the rule is when an item exists but the API user does not have the right access privileges to act on it. While it might be tempting to return a 403 (Forbidden), this in and of itself provides an attacker with information about the existence of the item. Instead, return a 404 if the user cannot access the record, no matter what the reason.

4. Comments 
Please take a few minutes to write a couple sentences about the project, what you were thinking in the way you laid  out your code and any questions, comments or confusions you had with the project. 

5. Timeline 
Please have the test prepared before our next interview and send it to tony.devlin@htc.hargray.com at least a day  before the interview so that we can review it and formulate our specific questions.
* ...
# Hargray_Challenge
