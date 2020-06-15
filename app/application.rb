class Application

  def call(env)
    resp = Rack::Response.new

    date_time = Time.now
    hour = date_time.hour

    resp.write"The current date and time is: #{date_time}\n"

    if hour < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish


  end
end
