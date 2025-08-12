docker compose -f pwd.yml down --remove-orphans
docker system prune -a --force
docker buildx bake --no-cache --set "*.platform=linux/arm64"
docker compose -f pwd.yml up -d
