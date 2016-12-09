if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider              => 'AWS',
      :aws_access_key_id     => ENV['access'],
      :aws_secret_access_key => ENV['secret']
    }
    config.fog_directory     =  ENV['an']
  end
end