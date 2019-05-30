# Project trees creator
*Ruby version : 2.5.3*

----

## What it does

Very simple script, nothing magic.

Creates a basic tree for fast workflow depending on the kind of project you are working on.

Currently supports graphic, video and web project trees.

## How it works

Add an alias to your `.bash_profile` file pointing to `app.rb` file in root directory of app. It should look like :

`alias youralias="~/your/path/to/app/app.rb"`

 I'm currenly using `initproj` as alias. Therefore, my command lines are as follows :

`$ initproj video` for video project

`$ initproj graphics` for graphics project

`$ initproj web` for web project

Made with ♥ by Montblanc
