# <center>MemeStr</center>

![Page when logged in](https://i.imgur.com/QgZSDyQ.png)

![Nav bar when logged in](https://i.imgur.com/6ek2nMj.png)

![Sign In page](https://i.imgur.com/hAib4sh.png)

![Sign Up page](https://i.imgur.com/rhj8rL4.png)

![Current user profile page](https://i.imgur.com/2oOhUdT.png)

![Other user page when logged in](https://i.imgur.com/Zomh85M.png)

![Edit account/delete account](https://i.imgur.com/hxuQmUT.png)

![Upload a new meme page](https://i.imgur.com/1eq9oFl.png)

## About MemeStr

- MemeStr is a site where people are free to "upload" their memes; to share with others or discover new ones!
- Ever find memes online and want to share with friends, but know they are busy and cannot be distracted by annoying notifications. MemeStr is the perfect place to centralize memes and share with friends! Easily upload your favorite memes and easily share with friends!

## TEch used

##### App was created using the following
-
- Ruby on Rails (Ruby Version 2.5.1)
- Bootstrap - Most styling
- CSS/SASS
- HTML
- Bcrypt
- PostgreSQL
- Heroku used to deploy live site

## Install & Setup
Step by step

1. Download this directory from Github to a local directory on your computer
2. Open Terminal
3. Open the project directory and type in: `bundle install` (This will install gems needed to run the app)
4. Make sure you have Postgres, if not, download it from the Postgres website.
5. Initiate a Postgres local server
6. Open a new terminal tab and make sure you are not in Postgres or have a rails server open in that tab
7. Type: `rails run rake db:migrate` (This will migrate the applications tables)
8. Type: `rails server` or `rails s` (This will initiate your server)
9. Open a new tab on your browser and type in `localhost:3000` in the address bar. (If you encounter an error or a different application loads, make sure you do not have a previous local server running in a different terminal tab.)
10. Start exploring/posting/sharing memes!



## Wireframe

![](https://i.imgur.com/zHUHL6S.png)

## ERD for data models

![](https://i.imgur.com/1erOLgJ.png)

## Backlog
### Opportunities for improvement

- Wasn't able to add a "Newest memes" section, without messing with the layout I had set.
- Would like to clean up the styling for smaller screens/devices.
- Ran out of time to add a comments and/or likes model

### Additional features

- Comments/Likes
- Share memes (Via email etc.)  

## Trello!

[Jesse's Trello Board - MemeStr](https://trello.com/b/zpBglloS "Jesse's Trello Board - MemeStr")
