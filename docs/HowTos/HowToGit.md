---
id: Git
title: Git
sidebar_label: Git
---

# Normal Workday

1. Checkout your own Branch
- *git checkout branchName*

2. PULL new stuff from Master
- *git pull origin master*

3. WORK on stuff on your Branch

4. COMMIT your work on your Branch
- *git commit -am "Comment Something"*	
- *git push origin branchName*			# Not sure if i need to push it

5. MERGE your Branch with Master
- *git checkout master*					# Switch to Master
- *git pull origin master*				# Pull up changes, that have been made while you worked
- *git merge branchName*				# Merge your changes to the master branch
- *git merge --squash branchName*
- *git rebase branchName*

####################################################################################################

## .gitconfig - Create Alias

- look for your .gitconfig File at:
	- Windows on C:\Users\USERNAME

	[user]
		name = Konhardt, André
		email = andre.konhardt@adesso.de

	somethign else
	test

### My Aliases

1. add, commit and push at the same time

	[alias]
		acp = "!f() { git add -A && git commit -m \"$@\" && git push; }; f"
		s = "!f() { git status; }; f"
		c = "!f() { git checkout \"$@\"; }; f"
	
	Usage: git acp "your comment"


# Standard Task

| *git init*
- Create an empty Git repository or reinitialize an existing one	


| *git status*
- Status: zeigt an welche Dateien nicht im Master Branch sind, welche also noch commited werden müssen


| *git add asd.js*
- Add File
- Kann auch ein ganzer Ordner sein

| *git add -A*
| *git add -all*
- Add everything that is new


| *git commit -m "Enter a comment here"*	
- Commit

| *git commit -am "Enter a comment here"*	
- Add + Commit Combined


| *git push*
- packt alles in Online Github repository

| *git pull*
- holt alles neue aus der Online Repo und packt es in die Lokale Repo

## Clone:

erstelle ein Lokales 

| *git clone https://github.com/Pico0/TestRepo.git*
- Download a Repository

| *git config* 
- Login

| *git config --global user.name "Konhardt, Andre"*

| *git config --global user.email "andre.konhardt@stud.hs-ruhrwest.de"*


# Difference

## git diff filename

- shows the difference between index and working tree, changes you haven't commited yet

# Revert

## Revert single file to origin/master

1. cd zu dem File-Path

| *git checkout -- filename.py*

# Stash

git stash					# stashes changes
git stash list				# see list of all stashed files
git stash apply stash@{0}	# reapply the saved stash
git stash drop stash@{0}	# delete the saved stash

# Branches

| *git branch	# See all Branches

| *git checkout BranchName
- Changes Local Repo to a specific Branch

| *git checkout -b newBranchName*
- create new Branch

| *git push origin newBranchName*
- pushes Branch into the online Repo

| *???*
- Delete Branch manually on Github

| *git pull origin branchName*
- pull a specific Branch

| *git merge branchName*
- First switch to Master Branch, then merge Bransh with Origin with the Command above
- then use git push to get the Merge on Github

###
git checkout master
git pull               # to update the state to the latest remote master state
git merge develop      # to bring changes to local master from your develop branch
git push origin master # push current HEAD to remote master branch

Code Review:
-> Create Pull Request
-> schickt automatisch die Änderungen von dem Code, der auf den Master Branch verschoben wurde

####################################################################################################


# install Git

for cmd bash

open bash in the Folder

	1. git init
	2. git log
	3. git ls // alles ansehen 
	als admin ausführen
	4. git add filename.txt	// git add * für alle Daten
	5. git commit -m "Comment"
	6. git push
	git push origin master   ???
		
	wtankonh
	8...

	
	https://gitlab.hs-ruhrwest.de/wtankonh/Modulkalkulator.git
	
	new Project: and follow instructions
	
	
	//git push origin master
	//git add app.js

	//git commit -m "First Commit"



	//https://gitlab.hs-ruhrwest.de/wtankonh/Modulkalkulator.git

	//git config --system --unset credential.helper
	
## Commands


	git fetch

	-> git pull is a fetch + git merge
	-> so a fetch alone 
