if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {

    }
    config.fog_directory     =  "serler-ruby"
  end
end