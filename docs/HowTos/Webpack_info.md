---
id: Webpack
title: Webpack
sidebar_label: Webpack
---

# WebPack

## Start

  npm run build


## Standard Procedure

https://www.sitepoint.com/webpack-beginner-guide/

1. npm init   to create a project with an index.html and app.js inside of it

2. install webpack

    npm install webpack webpack-cli --save-dev


3. Add the following inside package.json -> scripts

    "dev": "webpack --mode development",
    "build": "webpack --mode production"
    
Afterwards it should look something like this now

{
  "name": "learn-webpack",
  "version": "1.0.0",
  "description": "",
  "main": "index.js",
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1",
    "dev": "webpack --mode development",
    "build": "webpack --mode production"
  },
  "keywords": [],
  "author": "",
  "license": "ISC",
  "devDependencies": {
    "html-webpack-plugin": "^3.2.0",
    "webpack": "^4.41.2",
    "webpack-cli": "^3.3.9"
  }
}

4. npm run dev    to start webpack in development mode

5. 


<!-- Working with Scripts -->

7. npm install babel-loader @babel/core @babel/preset-env --save-dev

8. inwebpack.config.js add the following after Output:

module: {
    rules: [
      {
        test: /\.js$/,
        exclude: /node_modules/,
        use: {
          loader: 'babel-loader',
          options: {
            presets: ['@babel/preset-env']
          }
        }
      }
    ]
  },

9. npm run dev -- --devtools false

<!-- Working with Styles -->

10. npm install css-loader style-loader --save-dev

11. add the following to webpack.config.js inside module -> rules

    {
    test: /\.css$/,
    use: [{ loader: 'style-loader' }, { loader: 'css-loader' }],
    },

<!-- Asset Management -->

12. npm install file-loader --save-dev

13. Add the following Rule to webpack.config.js

    {
    test: /\.(png|jpg|gif)$/,
    use: [
        {
        loader: 'file-loader'
        },
    ],
    },


<!-- Development Process -->
14. Dev

    npm install webpack-dev-server --save-dev

15. package.json edit dev to:

    "dev": "webpack-dev-server --mode development",

16. webpack.config.js add

    devServer: {
    contentBase: './dist',
    open: true
    },

17. 


<!-- Clean up the Output -->

18. npm install --save-dev clean-webpack-plugin

19. in webpack.config.js 

    const CleanWebpackPlugin = require('clean-webpack-plugin');

    ...

    plugins: [
    ...
    new CleanWebpackPlugin()
    ],


20. npm run build