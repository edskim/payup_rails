require 'twilio-ruby'

class CallsController < ApplicationController
  respond_to :xml, :json

  @account_sid = 'AC49f6dc9e9c193f147a29c6f127f911bb'
  @auth_token = 'secret'

  def index
    @call = Call.new
    @call.name = params[:name]
    @call.amount = params[:amount]
    @call.date = params[:date]
    @call.requester = params[:requester]
    @call.save
    respond_with(@call)
  end

  def create
    @call = Call.new(params[:call])
    if @call.save
      @client = Twilio::REST::Client.new(@account_sid, @auth_token)
      @call = @account.calls.create({:from => '+18183517966', :to => '+8184381797', :url => 'http://afternoon-waters-4041.herokuapp.com/calls.xml?requester=eddie&name=richard&amount=100&date=today', :method => 'GET'})
    end
    respond_with(@call)
  end
end
