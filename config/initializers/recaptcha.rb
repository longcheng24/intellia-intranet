Recaptcha.configure do |config|
  config.public_key  = ENV['SITE_KEY']
  config.private_key = ENV['SECRET_KEY']
  # Uncomment the following line if you are using a proxy server:
  # config.proxy = 'http://myproxy.com.au:8080'
end