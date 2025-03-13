import pyjokes
import pyttsx3

speech = pyttsx3.init()
speech.say("I'm Akash, I'm learing python language")
speech.runAndWait()

jokes = pyjokes.get_joke()
print(jokes)