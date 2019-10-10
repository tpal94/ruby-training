require 'net/http'
require 'json'
require 'launchy'

url = 'http://newsapi.org/v2/top-headlines?country=us&apiKey=0b00e44d9cc44719bc7ab3904364ee13'
uri = URI(url)
response = Net::HTTP.get(uri)
json=JSON.parse(response)
# puts json

puts json['articles'][0]['title']
puts json['articles'][0]['author']
puts json['articles'][0]['description']
puts json['articles'][0]['url']
puts json['articles'][0]['urlToImage']
puts json['articles'][0]['publishedAt']
puts json['articles'][0]['content']

header = '<!DOCTYPE html>
        <html lang="en">
        <head>
        <title>News API</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
        * {
        box-sizing: border-box;
        }

        body {
        font-family: Arial, Helvetica, sans-serif;
        }

        /* Style the header */
        header {
        height: 150px;
        background-color: #000;
        padding: 15px;
        text-align: center;
        font-size: 35px;
        color: white;
        }

        article {
        float: left;
        padding: 20px;
        width: 100%;
        }

        /* Clear floats after the columns */
        section:after {
        content: "";
        display: table;
        clear: both;
        }

        /* Responsive layout - makes the two columns/boxes stack on top of each other instead of next to each other, on small screens */
        @media (max-width: 600px) {
        nav, article {
            width: 100%;
            height: auto;
        }
        }
        </style>
        </head>
        <body>
        <header>
        <h5>News API</h5>
        </header>
        <section>
        
        <article>'
        
body = '<b>Title:</b>&nbsp;<font size="-0.7">'+json['articles'][0]['title']+'</font><br>
        <b>Author:</b>&nbsp;<font size="-0.7"></font><br>
        <b>Published At:</b>&nbsp;<font size="-0.7">'+json['articles'][0]['publishedAt']+'</font><br>
        <b>Description:</b>&nbsp;<font size="-0.7">'+json['articles'][0]['description']+'</font><br>
        <b>Url:</b>&nbsp;<font size="-0.7"><a href="'+json['articles'][0]['url']+'">Go To Url</a></font><br>
        <b>Image:</b>&nbsp;<font size="-0.7"><a href="'+json['articles'][0]['urlToImage']+'">Image</a></font><br>
        <b>Content:</b>&nbsp;<font size="-0.7">'+json['articles'][0]['content']+'</font><br><br><br>
        
        <b>Title:</b>&nbsp;<font size="-0.7">'+json['articles'][1]['title']+'</font><br>
        <b>Author:</b>&nbsp;<font size="-0.7"></font><br>
        <b>Published At:</b>&nbsp;<font size="-0.7">'+json['articles'][1]['publishedAt']+'</font><br>
        <b>Description:</b>&nbsp;<font size="-0.7">'+json['articles'][1]['description']+'</font><br>
        <b>Url:</b>&nbsp;<font size="-0.7"><a href="'+json['articles'][1]['url']+'">Go To Url</a></font><br>
        <b>Image:</b>&nbsp;<font size="-0.7"><a href="'+json['articles'][1]['urlToImage']+'">Image</a></font><br>
        <b>Content:</b>&nbsp;<font size="-0.7">'+json['articles'][1]['content']+'</font><br>'
        

footer = '</article>
            </section>

            </body>
            </html>'

data = header + body + footer;
aFile = File.open("news.html", "w")
aFile.syswrite(data)

Launchy::Browser.run("../news.html")
