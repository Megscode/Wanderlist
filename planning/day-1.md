# Agenda

Kick off for final projects

### TEAM NAME! - Wanderlist

## Team charter

### Team practices
Swapping pairs\
Knowledge sharing\
Everyone learns everything\
Mobbing (especially at the beginning and learning something new)\
Demos\
Appreciations\
Noncode chat\
Check in


### Our Schedule

10 - standup
10:30 - 12:30 Pairing
1:30 Meditate
1:45 - Social catchup :D bunch
2 Pairing
4:30 Retro


### Where we record our learnings

Google docs\
Trello - with a team admin section\
Miro\
Envision - for mock up


### What’s important to us

Liz -
Fun!\
Collaboration practices (chats, git, knowledge sharing)\
Something i feel comfortable talking about at an interview\
A bit of a challenge but not suuuper stressful\
Mockups mid-way/after MVP would be nice so styling not too stressful at end\
Learn something new or build my confidence in an area im uncomfortable

Richard -

Having a fun project - Last one was good but really stressful!\
Id like to learn some python if it fits with the group vision\
Employability is important\
Trying not to learn too many new technologies at once\
Being reasonable with my own personal goals


Dafna -
Good collaboration, good vibes\
Make something useful\
Learn something new

David -
Do lots of planning\
Have fun\
Be accountable to one another\
Be patient/flexible\
Learn new things\
Work hard to make something cool/impressive\
Want to make API calls/possibly make something for mobile\
Make something related to the current covid/recession crisis

Megan -
Wanna create something that others can actually use irl\
Diagrams\
Make sure everyone is ok and happy\
Create a safe space for everyone to learn\
Google maps API would be nice\
So much communication :):):)\
Have fun\
Estimations\
No stress pls


### Our Ideas;

Liz -

I’m interested in the interaction between google maps and the app. Can you create something map-based in our app and then download back into google maps for navigation\
Custom directions for walking itineraries\
Useful to see what is actually possible with the maps API\
Maps stats e.g. this route is along all quiet roads and 80% park\
Map based treasure hunt (e.g. google’s where’s wally /pokemon go/geocaching)\
Can this work as a physical treasure hunt & a digital one?

Richard -
Idea:\
Quarantine app where you can list whether you are able to help others, people can then apply from a local pool with their address etc.\
Localised messaging service - talk to people close to you geographically.\
(potentially least feasible) app that spoofs your geolocation (to give inaccurate location to apps monitoring you)\
Heatmap of Covid Cases - Overlay with hospital demand?


Dafna -
Q is there a way to share your past routes (maps history)\
Are there stats on most walked routes using this history

David -
Ideas:\
For quarantine: save your home location and the app gives you points for how long you’re at home - make a leaderboard with your friends family\
Also for quarantine: like a reverse step-count where you get points for moving less\
Also for quarantine: virtual tours of places you would like to visit while there is no mobility\
Also for quarantine: find elderly/mobility-imparied people near you that need you to pick up groceries\
Map to nearest supermarket with least waiting time\
Map Covid cases in your area?\
Other: connect maps to another API e.g. Monzo, Travel sites, Twilio (e.g. if you’ve been outside for too long text you to go back home, or it texts you if you’re going through a Covid area?)\
Other APIs: https://apilist.fun/ e.g Spotify - send you music based on where you are
E.g. news/ history https://any-api.com/?tag=media: get sent info about where you are
Something to connect to Tfl API?

Megan -

An itinerary maker that lets you share outings with your family\
eg . countryside walks or areas of london. You can add notes to the map you creat of cool stuff\
Getting outside\
Google maps api\
Create custom routes and itineraries for London days out and countryside walks with cafes, pubs, green areas, cool buildings, museums, parks, statues, trees etc.\
Days out made Simple\
Create your own custom day out by selecting markers from [data source]
We take your selections and create an interactive route for you.\
Download the route on to your google maps or share it with friends/family.\
Option to save and upload for anyone to download and use.\
Option to add tags to your route, ‘how long the route will take’, ‘estimated cost of route’\
Others can rate your route\
Can add custom notes per pin marker



### Tech stack

Database\
Ruby on rails\
JS\
API android


2x2s


Lunchtime Research

“Create custom routes and itineraries for London days out and countryside walks with cafes, pubs, green areas, cool buildings, museums, parks, statues, trees etc.”

Examples:\
Similar idea but terrible UX: https://www.gpsmycity.com/gps-tour-guides/london-530.html\
A better example: https://geotourist.com/tours/2364\
Google maps map builder tool: https://www.google.com/maps/d/u/0/viewer?mid=1cO6CYWwS_kMjR7LMD7VUuTCP0fY&ll=55.681557425240335%2C12.647225199603099&z=12

Clarifying questions:

What is the USP for this product\
What makes it unique?\
What is it’s value?\
What problem is it solving?\
Routes & Itineraries two different things:\
Drawn from different sources\
How do we specify the kinds of things we want to see? Different APIs, e.g. tripadvisor
Is it only for walking? Or also biking/public transport/driving etc.?\
Can a user specify a distance/duration/number of sites/ start/end points etc.\
Ability to define the journey - in terms of distance, hours, features etc.\
Input and output - how does it deliver the tour back to the user? As an interactive map, a list, an email/SMS\
Define custom - does a user select things from a list or input? Or just enter their location? If a list is generated(how) that can then be customised? If so, how is it generated?\
What rating/sharing systems are inbuilt?

Steps of the user journey:\
Google an attraction\
Choose which attractions I want\
Deciding the order I want to see them - Circle or A to B\
Executing and adding into a walking tour

We just need to decide how much of this needs user input, and how much will be automated.


Resources:

https://www.youtube.com/watch?v=Zxf1mnP5zcw\
https://github.com/googlemaps/\



### User stories [mvp]

Creating routes:

As a user,\
So that I can create routes\
I would like to be able to sign into the app with my google account

As a user,\
So that I can create routes\
I would like to add stops (map markers) to my route

As a user,\
So that I can add stops to my route\
I would like to be able to search for existing places to add

As a user,\
So that I can see my saved route,\
I would like to see a line on the map

As a user,\
So that I can recommend a stop,\
I would like to add a note to a stop

As a user,\
So that I can describe my route,\
I would like to be able to add a description to my route

As a user,\
So that I can share my route,\
I would like to be able to give a route a title

As a user,\
So that I can see my routes,\
I would like to be able to publish my route

As a user,\
So that I can have a fun day out,\
I would like to be able to see a list of routes


Nice to have:

As a user,\
So that I can share my route,\
I would like to be able to send my route via a link

As a user,\
So that I can describe my route,\
I would like to be able to add categories to my route


Searching routes:

As a user,\
So that I can have a fun day out,\
I would like to be able to search for routes

As a user\
So that I can find routes anywhere\
I would like to enter in a location

As a user\
So that I can find routes near me\
I would like to enable my location

As a user,\
So that I can return to my favourite routes\
I would like to save routes to my favourites

As a user,\
So that I can see how far I’d have to travel on a route\
Id like to see a distance estimate

As a user,\
So that i can budget my time,\
Id like to see a time estimate for a route.

As a user,\
So that i can decide a route,\
I would like to see interesting information about it

As a user,\
So that I can rate a route I’ve taken,\
I’d like to be able to be able to upvote or downvote it

As a user,\
So that I can pick a route,\
I’d like to be able to sort by rating

As a user,\
So that I can pick a route,\
I’d like to be able to search by category