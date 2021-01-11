def url?(url_name)
  !!url_name.match(/\Ahttps?:\/\/\S+\z/) # !! is to make the result into a boolean
end

p url?('http://launchschool.com')   # -> true
p url?('https://example.com')       # -> true
p url?('https://example.com hello') # -> false
p url?('   https://example.com')    # -> false
