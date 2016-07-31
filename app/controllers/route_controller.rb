require 'net/http'
require 'pry'

class RouteController < ApplicationController
  def show
    url = URI.parse("http://54.206.63.152/api2/index/#{params[:data][:latTopLeft]}/#{params[:data][:longTopLeft]}/#{params[:data][:latBottomRight]}/#{params[:data][:longBottomRight]}")
    req = Net::HTTP::Get.new(url.to_s)
    res = Net::HTTP.start(url.host, url.port) {|http|
      http.request(req)
    } 

    result = res.body

    routes = []
    result.each_line do |line|
      if line.include? "<gml:pos>"
        l = line.sub("<gml:pos>", "")
        l = l.sub("</gml:pos>", "")
        routes << l.split(' ')
      end
    end

    render :json => routes 
  end
end
