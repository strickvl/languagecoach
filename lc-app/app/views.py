from flask import render_template
from app import app
import random

fivemintasks = [
	{'title': "Write 3 sentences", 'subtitle': "Take 5 minutes and write three complete sentences in your target language"},	
	{'title': "Book a new iTalki session", 'subtitle': "Sometimes all you need is a new class to get you back into your language study. Take the time now to book a session at a time convenient for you."}, 
	{'title': "Write or reply to a tweet", 'subtitle': "Go on Twitter and write/reply to a tweet using the language you're learning. Try and participate in a conversation."},	
	{'title': "Describe your room", 'subtitle': "Describe the room in which you're sitting in the language you're learning out loud. Note down any words that you're missing, but keep trying to describe what's around you even without the missing words."}]

@app.route('/')
@app.route('/index')
def index():
	task_title=(random.choice(fivemintasks))['title']
	task_subtitle=(random.choice(fivemintasks))['subtitle']
	return render_template('index.html',title='Five Minute Task', task_title=task_title, task_subtitle=task_subtitle)