Versionist.configure do |config|
  config.default_version = 1
  config.allowed_versions = [1, 2]
  config.versioning_strategy = :path
  config.prefix = "api"
  config.rescue_on_declared_parameter = true

  config.mapping = {
    "Api::V1::UsersController" => UserSerializerV1,
    "Api::V2::UsersController" => UserSerializerV2,
  }
end
