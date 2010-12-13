require "spec_helper"

describe TwiStream::Client do

  before :all do
    auth = YAML.load_file('auth.yml')
    @client = TwiStream::Client.new(auth)
    @client.on_error.handle do |msg,tr|
      puts msg 
    end
  end

  context "start the filter stream, wait 10 seconds and stop" do
    it "should start the filter stream" do
      keywords = "nowplaying", "nowwatching"
      @client.filter_by_keywords(keywords) do |status|
        puts status
        status.should_not == be_nil
      end
    end

    it "should wait 10 seconds" do
      sleep 10
    end

    it "should stop" do
      @client.stop
    end
  end

  context "start the sample stream, wait 10 seconds and stop" do
    it "should start the sample stream" do
      @client.sample do |status|
        puts status
        status.should_not == be_nil
      end
    end

    it "should wait 10 seconds" do
      sleep 10
    end

    it "should stop" do
      @client.stop
    end
  end

end