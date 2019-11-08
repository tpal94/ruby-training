require 'oauth'
require 'json'
require 'launchy'
class App

    CONSUMER_KEY ='7zlSFzKLhxgP48C3TQJ5dBpvf'
    CONSUMER_SECRET ='fpNwmWVoqsc6PA0l8Qc4LsE0lE8COPVgWRUE3ujhWGab6AMCfG'
    OA_TOKEN ='838585254185033728-GP9VsraO3rW9dHuzt3pfF6LBVyuwjiK'
    OA_SECRET='EZCUfQfSr0fq8UU7QeKYVWMXx5vmk7lXGpTjeOvupOv4E'
    
    BASE_URI ='https://api.twitter.com/1.1/'
    
    
    def initialize
    
    consumer =OAuth::Consumer.new(CONSUMER_KEY,CONSUMER_SECRET,{site: 'https://api.twitter.com',scheme: :header}) 
    token_hash = {oauth_token: OA_TOKEN , oauth_token_secret: OA_SECRET}
    @access_token = OAuth::AccessToken.from_hash(consumer,token_hash)
     
     end
    
    
    def home_line options=nil
    response = @access_token.request(:get, "#{BASE_URI}statuses/home_timeline.json",options).body
    response
    end
    
    end
    
    a = App.new
    data = a.home_line
    dataa = JSON.parse(data)
    
    
    
    html_content=""
    profile_img= " "
    for i in 0..(dataa.length-1) do
        puts i
        post_img=''
        if(dataa[i]["entities"].has_key?('media')) 
         post_img ='<img  width="100%"   src="'+ dataa[i]["entities"]["media"][0]["media_url"]+'">'
        end
    
         profile_img ='<img  align="middle"  width="10%" style="border-radius: 50%;"src="'+ dataa[i]["user"]["profile_image_url"]+'">'
         html_content += '<div style="margin-top:2px; background-color: #F2F3F4;  border-style : outset ; border-width :1px ;  border-color: #ECF0F1;" >
                          <div>'+profile_img+'&nbsp;<b>'+dataa[i]["user"]["name"]+'</b><p>' +dataa[i]["text"]+'</p></div> 
                          <div>'+post_img+'</div>
                          </div>'
    
    
    
                        end
    htm2='<div style=" width: 40%; margin-left:30%; " >' + html_content+  '</div>'
    
    aFile = File.open("index.html", "w")
    aFile.syswrite(htm2)
     
    aFile = File.open("dummy.json", "w")
    aFile.syswrite(data)

    Launchy::Browser.run("../index.html")
    
    
    #  src=" '+#{dataa[i]["entities"]["media"][0]["media_url"]}+'">
