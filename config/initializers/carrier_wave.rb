if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = { region: Oregen, provider: AWS , aws_access_key_id: 11111111 , aws_secret_access_key: 11111111
    }
    config.fog_directory     =  "serler-ruby"
  end
end

