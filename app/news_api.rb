require 'net/http'
require 'json'
require 'launchy'

url = 'http://newsapi.org/v2/top-headlines?country=us&apiKey=0b00e44d9cc44719bc7ab3904364ee13'
uri = URI(url)
response = Net::HTTP.get(uri)
json=JSON.parse(response)

# puts json

head ='<!DOCTYPE html>
        <head>
        <title>News API</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
        
        body {
        font-family: Arial, Helvetica, sans-serif;
        }

        /* Style the header */
        header {
        height: 100px;
        background-color: #000;
        padding: 10px;
        text-align: center;
        font-size: 30px;
        color: white;
        font-family: sans-serif;
        }

        article {
        float: left;
        padding: 20px;
        width: 100%;
        }

        </style>
        </head>
        <body>
        <header>
        <h5>News API</h5>
        </header>
        
        <article>'
        
body = " "
        for i in 0..6
body+= '<b>Title:</b><a href="'+json['articles'][i]['url']+'">'+json['articles'][i]['title']+'</a><br>
        <b>Published At:</b>'+json['articles'][i]['publishedAt']+'<br>
        <b>Description:</b>'+json['articles'][i]['description']+'<br>
        <b>Image:</b><a href="'+json['articles'][i]['urlToImage']+'">Image</a><br>
        <b>Content:</b>'+json['articles'][i]['content']+'<br><br><br>'
        end
        '</article>
        </body>
        </html>'
         
data = head + body 
news = File.open("news.html", "w")
news.syswrite(data)

Launchy::Browser.run("../news.html")
