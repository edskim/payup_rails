class TwimlController < ApplicationController
  respond_to :xml

  def index
    @call = Call.new
    @call.name = params[:name]
    @call.amount = params[:amount]
    @call.date = params[:date]
    @call.requester = params[:requester]
    respond_with(@call)
  end
end
