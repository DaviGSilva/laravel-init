init:
	@cp .env.example .env
	@echo "✅✅✅.env file created from example"

install:
	@echo "\n📦📦📦Installing Node dependencies...📦📦📦\n"
	@docker compose up node
	@echo "\n✅✅✅Node dependencies installed✅✅✅\n"
	@echo "📦📦📦Installing PHP dependencies...📦📦📦\n"
	@docker compose up composer
	@echo "\n✅✅✅PHP dependencies installed✅✅✅\n"

generate-app-key:
	@docker compose exec app php artisan key:generate

serve:
	@echo "\n🚀🚀🚀Starting application..."
	@echo "📌📌📌Terminal will continue attached\n"
	@docker compose up app
