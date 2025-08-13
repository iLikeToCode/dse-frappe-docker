docker compose -f pwd.yml down --remove-orphans
docker buildx bake --set "*.platform=linux/arm64"
docker compose -f pwd.yml up -d
