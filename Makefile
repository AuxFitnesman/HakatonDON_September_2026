.PHONY: up down logs migrate seed frontend backend

up:
	docker compose up --build

down:
	docker compose down

logs:
	docker compose logs -f api web

migrate:
	docker compose exec api alembic upgrade head

seed:
	docker compose exec api python -m app.scripts.seed

frontend:
	cd frontend && npm run dev

backend:
	cd backend && uvicorn app.main:app --reload
