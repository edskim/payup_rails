require 'twilio-ruby'

Account_sid = 'AC49f6dc9e9c193f147a29c6f127f911bb'
Auth_token = 'de4759863ca89f7e9ae0588639e34a25'

class CallsController < ApplicationController
  respond_to :json

  def index
    @calls = Call.all
    respond_with(@calls)
  end

  def create
    @call = Call.new(params[:call])
    if @call.save
      @client = Twilio::REST::Client.new(::Account_sid, ::Auth_token)
      @account = @client.account
      @call = @account.calls.create({:from => '+18183517966', :to => "+1#{@call.number}", :url => "http://afternoon-waters-4041.herokuapp.com/calls.xml?requester=#{@call.requester}&name=#{@call.name}&amount=#{@call.amount}&date=#{@call.date}", :method => 'GET'})
    end
    respond_with(@call)
  end
end
