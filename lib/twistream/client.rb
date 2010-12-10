module TwiStream
  class Client
    extend TwiStream::EventHandler
    attr_accessor :realm
    events :on_error

    def initialize(auth)
      self.realm = "#{auth[:user]}:#{auth[:pass]}".chomp
    end

    def sample(params = {}, & block)
      start(:sample, params, & block)
    end

    def retweet(params = {}, & block)
      start(:retweet, params, & block)
    end

    def firehose(params = {}, & block)
      start(:firehose, params, & block)
    end

    def filter_by_keywords(params = {}, & block)
      start(:filter, :track => params.join(','), & block)
    end

    def filter_by_users(params = {}, & block)
      start(:filter, :follow => params.join(','), & block)
    end

    def filter_by_locations(params = {}, & block)
      start(:filter, :locations => params.join(','), & block)
    end

    def stop
      if @thread.alive?
        @thread.kill
      end
    end

    private
    def start(api_method, params = {}, & block)
      url = build_uri(api_method)
      @thread = Thread.new do
        begin
          ::Yajl::HttpStream.post(url, params) do |status|
            puts status
            block.call(status)
          end
        rescue
          on_error.trigger($!, $@)
        end
      end
    end

    def build_uri(api_method)
      URI.parse("http://#{self.realm}@stream.twitter.com/1/statuses/#{api_method.to_s}.json")
    end
  end
end