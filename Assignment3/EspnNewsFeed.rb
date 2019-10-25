require 'httparty'
require 'launchy'
require 'date'

class EspnNewsFeed
  @api
  @espn_response
  @news
  @html
  
  def initialize(api,news)
    @api=api
    @news=news
    @html = ""
  end
  
  def getApi()
    response = HTTParty.get(@api,:verify => false)
    @espn_response = response['articles']
  end
  def renderHtml
    @html = "<header><h1>NCAAF News</h1></header>"
    for record in @espn_response  do
      url=((record['images'].empty?) ? '' : record['images'][0]['url'])
      width=((record['images'].empty?) ? '' : record['images'][0]['width'])
      caption=((record['images'].empty?) ? '' : record['images'][0]['caption'])

      @html+= '<h3 style="margin-top:40px">'+record['headline'].to_s+'</h3>
              <img src="'+url+'" style= "width:'+width.to_s+'  " /><br>
              <div><figcaption style="margin-top:20px">' +caption.to_s+'</figcaption></div> 
              <div><figcaption style="margin-top:20px">' +record['links']['web']['href']+'</figcaption></div> 
              <span style="font-weight:bold">Date : '+record['categories'][0]['createDate'].to_s+' </span>
              <div style="width:100%; margin-top:10px;"></div>' 
    end
  end  
  
  def executeFile
    Launchy::Browser.run("../"+@news)
  end
  
  def createPage
    file = File.new(@news, "w")
    file.puts(@html)
    file.close
  end
  
end
api = 'http://site.api.espn.com/apis/site/v2/sports/football/college-football/news'

obj = EspnNewsFeed.new(api,"EspnNewsFeed.html")
obj.getApi
obj.renderHtml
obj.createPage
obj.executeFile
