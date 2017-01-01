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
	return render_template('index.html',title="Home")

@app.route('/')
@app.route('/howlong')
def howmuchtime():
	return render_template('howlong.html',title="How long?")

@app.route('/about')
def about():
	return render_template('about.html',title="About")

@app.route('/coachbot')
def coachbot():
	return render_template('coachbot.html',title="CoachBot")

@app.route('/coaching')
def coaching():
	return render_template('coaching.html',title="Coaching")

@app.route('/podcasts')
def podcasts():
	return render_template('podcasts.html',title="Podcasts")

@app.route('/fivemintask')
def fivemintask():
	random_task = random.choice(fivemintasks)
	task_title=random_task['title']
	task_subtitle=random_task['subtitle']
	return render_template('fivemintask.html',title='Five Minute Task', task_title=task_title, task_subtitle=task_subtitle)

@app.route('/tenmintask')
def tenmintask():
	return render_template('tenmintask.html',title="Ten Minute Task")

@app.route('/twentymintask')
def twentymintask():
	return render_template('twentymintask.html',title="Twenty Minute Task")

@app.route('/thirtymintask')
def thirtymintask():
	return render_template('thirtymintask.html',title="Thirty Minute Task")

@app.route('/sixtymintask')
def sixtymintask():
	return render_template('sixtymintask.html',title="Sixty Minute Task")
