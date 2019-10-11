require 'httparty'
require 'launchy'
require 'date'

class InstaNewsFeed
  @api
  @insta_response
  @fileName
  @html
  
  def initialize(api,fileName)
    @api=api
    @fileName=fileName
    @html = ""
  end
  
  def getFromApi()
    response = HTTParty.get(@api,:verify => false)
    @insta_response = response['data']
  end
  
  def renderHtml
    for record in @insta_response do
      @html+= '<div style="width:100%; margin-top:20px;" >
                <a href="'+record['link']+'" style="width: 32px; height: 32px;">
                   <img src="'+record['user']['profile_picture']+'" style="border-radius:50%;  height: 30px;"  />' +record['user']['username']+'
                </a>
                <div>
                  <img src="'+record['images']['standard_resolution']['url']+'" style="width: 480px; height: 480px; margin-top:20px"  />
                </div>
                <div style="width:100%; margin-top:10px;">
                  <span style="font-weight:bold">Date : '+Time.at(record['created_time'].to_i).to_s+' </span>
                </div>
                <div style="width:100%; margin-top:10px;">
                  <span style="font-weight:bold;color:red">Likes: ' +record['likes']['count'].to_s+' </span>  
                  <span style="font-weight:bold;color:green">Comments: ' +record['comments']['count'].to_s+' </span>
                </div>
            </div>' 
    end
  end  
  
  def executeFile
    Launchy::Browser.run("../"+@fileName)
  end
  
  def createHtmlPage
    out_file = File.new(@fileName, "w")
    out_file.puts(@html)
    out_file.close
  end
  
end

api = 'https://api.instagram.com/v1/users/self/media/recent/?access_token=2289061863.3f4dd1a.baaaf4aaae194dc789dd50494797c446'

obj = InstaNewsFeed.new(api,"insta_feed.html")
obj.getFromApi
obj.renderHtml
obj.createHtmlPage
obj.executeFile


