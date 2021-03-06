### Hargray WEB DEVELOPER CODE TEST

Landing page ![Image 1]((1).png) 
Definition display ![Image 2]((2).png) 
Previous terms persisted<br/> ![Image 3]((3).png)<br/> 
Only last 5 terms displayed <br/> ![Image 4]((4).png)<br/> 
User error/exception <br/> ![Image 5]((5).png) 
Developer view of error/exception in terminal <br/> ![Image 6]((6).png) 

# Reflection: 
This was a fun exercise in consuming a 3rd party API. I appreciate the clear guidelines & flexilibity in developer discretion. 

# Planning: 
-Rails setup scaled through commands like 'rails new app' & 'rails generate controller XYZ' <br/>
-I made 2 views pages to keep it simple, a root index a.k.a landing page and a search result page <br/>
-Setup routes to reflect the root page and redirects <br/>
-Added simple bootstrap in the asset pipeline to make it appear simple and nice <br/>
-I used gems like RestClient & JSON to send the request and parse the response <br/>
-Gem figaro was to hide the API key & ID in a safe place in the directory, and goes in the .gitignore so it doesn't get uploaded to the internet while using version control <br/>
-After submission of a search term, the definition (or error) would be displayed to the user alongside a search history of words (max: 5 words) <br/> 
-Exception handling was done with begin/rescue/end block alongside a rails baked render_404 method setup in the parent application controller.  These exception handling blocks then handled logging the errors in both technical terms & human terms so developers could see and understand error details, parameters, and the response object while the user received a readable-message stating any reason for a error <br/>

# Additional takeaways
-The hardest part was actually parsing the response object from the Oxford API. I have worked with deep nested data (ex. Fast JSONAPI) so I was able to use tools like Postman & byebug to cleanly parse it. (sidenote: I was blown away by the amount of academic information there was for each word) <br/>
-I used the Ruby array method .last() to handle only displaying last 5 search terms. Refreshing to see again all the dynamic array methods Ruby allows 
