set +x
source ~/.zshrc

export APPLE_ID=$(aws secretsmanager get-secret-value --secret-id APPLE_ID --query SecretString --output text)
export APPLE_TEAM_ID=$(aws secretsmanager get-secret-value --secret-id APPLE_TEAM_ID --query SecretString --output text)
export MATCH_S3_BUCKET=$(aws secretsmanager get-secret-value --secret-id MATCH_S3_BUCKET --query SecretString --output text)
export APP_STORE_CONNECT_API_KEY_KEY_ID=$(aws secretsmanager get-secret-value --secret-id APP_STORE_CONNECT_API_KEY_KEY_ID --query SecretString --output text)
export APP_STORE_CONNECT_API_KEY_ISSUER_ID=$(aws secretsmanager get-secret-value --secret-id APP_STORE_CONNECT_API_KEY_ISSUER_ID --query SecretString --output text)
export APP_STORE_CONNECT_API_KEY_KEY_CONTENT=$(aws secretsmanager get-secret-value --secret-id APP_STORE_CONNECT_API_KEY_KEY_CONTENT --query SecretString --output text)
export MATCH_PASSWORD=$(aws secretsmanager get-secret-value --secret-id MATCH_PASSWORD --query SecretString --output text)
export MATCH_KEYCHAIN_PASSWORD=$(aws secretsmanager get-secret-value --secret-id MATCH_PASSWORD --query SecretString --output text)
export FASTLANE_PASSWORD=$(aws secretsmanager get-secret-value --secret-id FASTLANE_PASSWORD --query SecretString --output text)
export FASTLANE_APPLE_APPLICATION_SPECIFIC_PASSWORD=$(aws secretsmanager get-secret-value --secret-id FASTLANE_APPLE_APPLICATION_SPECIFIC_PASSWORD --query SecretString --output text)

# Build
fastlane beta_ci