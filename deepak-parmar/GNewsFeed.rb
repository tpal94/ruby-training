require 'news-api'
require 'net/http'
require 'json'
require 'launchy'
url = 'http://newsapi.org/v2/top-headlines?sources=google-news&apiKey=977325ca24414ca0aa47a5a8c6e24e32'
uri = URI(url)
response = JSON.parse(Net::HTTP.get(uri))

json = response['articles']

        body=''

        for records in json do

        
                body+='<div style="margin-top:5px; background-color: #F2F3F4;  border-style : outset ; border-width :4px ;  border-color: #ECF0F1;" >
                <div align="center"> <b>Title:</b>&nbsp;<font size="-0.7">'+records['title'].to_s+'</font><br> </div>
                <div align="center"> <b>Author:</b>&nbsp;<font size="-0.7">'+records['author'].to_s+'</font><br></div>
                <div align="center"> <b>Published At:</b>&nbsp;<font size="-0.7">'+records['publishedAt'].to_s+'</font><br></div>
                <div align="center"> <b>Description:</b>&nbsp;<font size="-0.7">'+records['description'].to_s+'</font><br></div>
                <div align="center"> <b>Url:</b>&nbsp;<font size="-0.7"><a href="'+records['url'].to_s+'">For more detail click here</a></font><br></div>
                <div align="center"> <b>Image:</b>&nbsp;<font size="-0.7"><a href="'+records['urlToImage'].to_s+'">Image</a></font><br></div>
                <div align="center"> <img src="'+records['urlToImage'].to_s+' " style="width:900px;height:500px;"></div>
                <div align="center"> <b>Content:</b>&nbsp;<font size="-0.7">'+records['content'].to_s+'</font><br><br><br></div>'
                
        end
footer =    '</article>'
data = body + footer;
aFile = File.open("GNewsFeed.html", "w")
aFile.syswrite(data)
Launchy::Browser.run("../GNewsFeed.html")