##
## ****************************************
## * EXAMPLE OF HOW TO USE POWERSHELL ISE * 
## *      for RestFUL API requests        *
## ****************************************
##
## NOTE: Edit the variables. Uncomment the 
## line(s) you would like to use, comment
## the lines you would not use.
##
## 2021 - IT4You
## 

# VARIABLES
$ENPOINT = 'http://localhost:5001/posts'
$POST_ID = 1234

## READ ALL POSTS
$GetPosts = Invoke-RestMethod -Uri $ENPOINT -Method Get
$GetPosts

# READ A SINGLE POST (with ID)
#$GetPostWithID = Invoke-RestMethod -Uri $ENPOINT/$POST_ID -Method Get
#$GetPostWithID 

## CREATE A POST
#$CreatePost = Invoke-RestMethod -Uri $ENPOINT -Method Post
#$CreatePost 

## UPDATE A POST
#$UpdatePost = Invoke-RestMethod -Uri $ENPOINT/${POST_ID} -Method Put
#$UpdatePost 

## DELETE A POST
#$DeletePost = Invoke-RestMethod -Uri $ENPOINT/${POST_ID} -Method Delete
#$DeletePost 