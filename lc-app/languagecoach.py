import random

fivemintasks = [
	{'title': "Write 3 sentences", 'subtitle': "Take 5 minutes and write three complete sentences in your target language"},	
	{'title': "Book a new iTalki session", 'subtitle': "Sometimes all you need is a new class to get you back into your language study. Take the time now to book a session at a time convenient for you."}, 
	{'title': "Write or reply to a tweet", 'subtitle': "Go on Twitter and write/reply to a tweet using the language you're learning. Try and participate in a conversation."},	
	{'title': "Describe your room", 'subtitle': "Describe the room in which you're sitting in the language you're learning out loud. Note down any words that you're missing, but keep trying to describe what's around you even without the missing words."}]

def pick_random_task(time):
	taskpick=random.choice(fivemintasks)
	print "Number of possible tasks: " + str(len(fivemintasks))
	print str(time) + " minutes selected"
	print "Task: " + taskpick['title']
	print "More: " + taskpick['subtitle']

pick_random_task(5)