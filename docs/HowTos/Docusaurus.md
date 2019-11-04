---
id: Docusaurus
title: Docusaurus
sidebar_label: Docusaurus
---

https://docusaurus.io/docs/en/tutorial-setup

## Cycle

cd website

npm run build
set GIT_USER=username
npm run publish-gh-pages

## Install

npm install --global docusaurus-init

## Create Page

docusaurus-init

## Start

npm start

## Publish

### Github Pages


1. Edit the file docusaurus-tutorial/website/siteConfig.js and fill in the following values:


    const siteConfig = {
        ...
        url: 'https://USERNAME.github.io', // Replace USERNAME with your GitHub username.
        baseUrl: '/docusaurus-tutorial/', // The name of your GitHub project.
        projectName: 'docusaurus-tutorial',  // The name of your GitHub project. Same as above.
        organizationName: 'USERNAME' // Your GitHub username.
        ...
    }

2. npm run build
3. set GIT_USER=username
4. GIT_USER=USERNAME CURRENT_BRANCH=master USE_SSH=true npm run publish-gh-pages


## Code


### Create new Page

Add the Header and put the Id into siteConfig.js File. And have the .md Document inside the "docs"-Folder

Header:

    ---
    id: Javascript
    title: Javascript
    sidebar_label: Javascript
    ---

## Live Server