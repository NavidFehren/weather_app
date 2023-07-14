The exercise we would like you to implement is a simple and fun one: the user chooses a city, and the application shows the temperature in that city.
You are free to improvise what you think would be more interesting, from what point of view you consider. Bonus points for architecture, UI and UX.
We would like you to invest approximately a maximum of 4-6 hours, so that we have code that we can review as soon as possible.
We hope that the project is a nice and pleasant one for you.

Description:
Weather App consists of 2 screens, controlled by a bottom navigation menu.
Screen #1 contains:
* User image - hardcoded
* Hello message - depending on time of day - morning, day, evening
* Temperature - Celsius number, text
* Image depending on temperature - image representing weather - sunny, snow, rain, feel free to improvise

Screen #2 contains:
* Header - please feel free to improvise
* A list of 100 cities to choose from
* Button, on click:
  - on city not chosen, alert user to select a city from the list
  - on city chosen, get weather via some free weather provider
  - on city chosen, screen 1 updates information (temperature degrees and image) via some state provider (Provider, Riverpod, etc)