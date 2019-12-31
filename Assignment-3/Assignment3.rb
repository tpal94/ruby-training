require 'rest-client'
require 'json'
require 'launchy'
response = RestClient::Request.execute(
    method: :get,
    url: 'https://hn.algolia.com/api/v1/search?query=foo&tags=story'
    )
json = JSON.parse(response)
body = ''
header = '<!DOCTYPE html>
        <html lang="en">
            <head>
                <title>CSS Template</title>
                <meta charset="utf-8">
                <meta name="viewport" content="width=device-width, initial-scale=1">
                <style>
                    * {
                        box-sizing: border-box;
                    }

                    /* unvisited link */
                    a:link {
                        color: black;
                        text-decoration: none;
                    }

                    /* visited link */
                    a:visited {
                        color: green;
                        text-decoration: none;
                    }

                    /* mouse over link */
                    a:hover {
                        color: #ff6600;
                        text-decoration: none;
                    }

                    body {
                        font-family: Arial, Helvetica, sans-serif;
                    }

                    /* Style the header */
                    header {
                        background-color: #666;
                        padding: 30px;
                        text-align: center;
                        font-size: 35px;
                        color: white;
                    }

                    article {
                        float: left;
                        padding: 20px;
                        width: 100%;
                        background-color: #f1f1f1;
                    }

                    /* Clear floats after the columns */
                    section:after {
                        content: "";
                        display: table;
                        clear: both;
                    }

                    div{
                        border:1px solid grey;
                        padding-left: 30px;

                    }

                    h1{
                        font-size: 30px;
                        line-height: 0.2;
                    }

                    /* Style the footer */
                    footer {
                        background-color: #777;
                        padding: 10px;
                        text-align: center;
                        color: white;
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
                    <h2>NewsFetch</h2>
                </header>
                <section>
                    <article>'
i = 0;
while(i<json['hits'].length)
    link=''
    if(!(json['hits'][i]['url'].nil?))
        link = '<a href = "'+json['hits'][i]['url']+'">'
    end
                body += '<div>'+link+'<h1><b>'+json["hits"][i]["title"]+'</b></h1></a>
                        <b>Author:</b>&nbsp;<font size="-0.7">'+json["hits"][i]["author"]+'</font><br>
                        <b>Posted on:</b>&nbsp;<font size="-0.7">'+json["hits"][i]["created_at"]+'</font><br>
                        <b>Comments:</b>&nbsp;<font size="-0.7">'+json["hits"][i]["num_comments"].to_s+'</font><br><br><br><br></div>'
    i=i+1;
end
footer =            '</article>
                </section>
                <footer>
                    <p>Made By: Dewanshu Chhatlani</p>
                </footer>
            </body>
         </html>'
data = header + body + footer;
aFile = File.open("input.html", "w")
 aFile.syswrite(data)
Launchy::Browser.run("../input.html")
