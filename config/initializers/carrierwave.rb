CarrierWave.configure do |config|
  if Rails.env.production?
    config.storage = :fog
    config.fog_credentials = {
      provider:              Figaro.env.PROVIDER,
      aws_access_key_id:     Figaro.env.AWS_KEY,
      aws_secret_access_key: Figaro.env.AWS_SECRET,
      region:                Figaro.env.AWS_REGION
    }
    config.fog_directory = Figaro.env.S3_BUCKET_NAME
  elsif Rails.env.test?
    config.storage = :file
    config.enable_processing = false
  else
    config.storage = :file
  end
end
