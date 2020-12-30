def predict_weather
  sunshine = [true, false].sample

  puts sunshine ? "Today's weather will be sunny!" : "Today's weather will be cloudy!"
end

predict_weather
