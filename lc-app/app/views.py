from flask import render_template
from app import app
import random
import csv

fivemintasks = []
reader = csv.DictReader(open('lc-app/app/tasks5mins.csv'))
for row in reader:
	fivemintasks.append(row)

tenmintasks = []
reader = csv.DictReader(open('lc-app/app/tasks10mins.csv'))
for row in reader:
	tenmintasks.append(row)

twentymintasks = []
reader = csv.DictReader(open('lc-app/app/tasks20mins.csv'))
for row in reader:
	twentymintasks.append(row)

thirtymintasks = []
reader = csv.DictReader(open('lc-app/app/tasks30mins.csv'))
for row in reader:
	thirtymintasks.append(row)

sixtymintasks = []
reader = csv.DictReader(open('lc-app/app/tasks60mins.csv'))
for row in reader:
	sixtymintasks.append(row)

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
	random_task = random.choice(tenmintasks)
	task_title=random_task['title']
	task_subtitle=random_task['subtitle']
	return render_template('tenmintask.html',title="Ten Minute Task", task_title=task_title, task_subtitle=task_subtitle)

@app.route('/twentymintask')
def twentymintask():
	random_task = random.choice(twentymintasks)
	task_title=random_task['title']
	task_subtitle=random_task['subtitle']
	return render_template('twentymintask.html',title="Twenty Minute Task", task_title=task_title, task_subtitle=task_subtitle)

@app.route('/thirtymintask')
def thirtymintask():
	random_task = random.choice(thirtymintasks)
	task_title=random_task['title']
	task_subtitle=random_task['subtitle']
	return render_template('thirtymintask.html',title="Thirty Minute Task", task_title=task_title, task_subtitle=task_subtitle)

@app.route('/sixtymintask')
def sixtymintask():
	random_task = random.choice(sixtymintasks)
	task_title=random_task['title']
	task_subtitle=random_task['subtitle']
	return render_template('sixtymintask.html',title="Sixty Minute Task", task_title=task_title, task_subtitle=task_subtitle)
