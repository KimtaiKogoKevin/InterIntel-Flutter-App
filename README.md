# test_evaluation

Evaluation of flutter  skills InterIntel  



## Features achieved in the Project 

1. Information Screen - the screen contains a form that prompts the user for simple profile details ,  when submitted redirects the user to a page where he/ she can view the submitted information on the design screen .
2. Design screen  - by default the screen asks you to submit the form in information screen , when submitted the screen changes and displays the user profile 
3. Response screen  - in this screen we call this API https://jsonplaceholder.typicode.com/todos?_limit=5  , using a custom model that wa spparsed fro JSON to dart using this link https://app.quicktype.io/ , I created a ToDos model , I then created a services file that contains the logic where the API is called and the API body is returned and then converted from Json into a list , this list is then fetched in the response screen using getdata function  and printed in a list tile with a trailing API icon ,
4. Dictionary Screen - In this scren i first created a map with  the given values , i then created a map with only integer keys and another map with nly string keys , i then used the splay tree map method to sort the two maps individually based on their keys in ascending order , finally i merged the two maps to a final sorted map  with a dynamic key and a string value type .
5. Splash screen with an animation using the animated splash screen package i.e a rotatational transition


One challenge I faced was having  the app bar and the nav bar to the design screen without changing the state  ,  safter submitting the form on the information screen the appbar and navbar chaged in the profile screen hence I removed them both and added a navigation back to the info screen after viewing the profile .





