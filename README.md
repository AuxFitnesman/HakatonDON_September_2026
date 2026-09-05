<<<<<<< HEAD
# Чистый берег (КОСМОХАК)

Монорепозиторий цифрового продукта экологического проекта «Чистый берег».

## Стек

| Слой | Технологии |
|------|------------|
| Frontend | React, TypeScript, Vite, TailwindCSS, PWA |
| Backend | FastAPI, SQLAlchemy, Alembic |
| Infra | Docker, PostgreSQL, Redis |
| Mobile (этап 8) | Capacitor (обёртка над web) |

## Фичи (заложены в структуру)

- Аутентификация (email/password) + **2FA (TOTP)**
- Авторизация по ролям: `youth` / `oopt` / `admin`
- OAuth: **GitHub** и **Яндекс**
- Адаптивный UI (mobile-first)
- **PWA**: install + offline shell
- AI-помощник (виджет + RAG-заготовка)
- Альтернативный ввод: голос, камера, OCR, рисование на карте
- Домен: обучение, карта/ДЗЗ (mock), алерты, эко-активности, KPI
- Заготовка под мобилку (Capacitor)

## Быстрый старт

```bash
cp .env.example .env
docker compose up --build
```

- Web: http://localhost:5173
- API docs: http://localhost:8000/docs
- Health: http://localhost:8000/health

### Локально без Docker (dev)

```bash
# backend
cd backend
python -m venv .venv
# Windows: .venv\Scripts\activate
pip install -r requirements.txt
alembic upgrade head
uvicorn app.main:app --reload

# frontend
cd frontend
npm install
npm run dev
```

## PWA

- Иконки и манифест уже в `frontend/` (vite-plugin-pwa)
- Установка и офлайн работают после production-сборки:

```bash
cd frontend && npm run pwa
```

Подробнее: `docs/MOBILE.md`.

## Структура

```
chistyy-bereg/
├── backend/          # FastAPI
├── frontend/         # React + Vite + PWA
├── docs/             # архитектура, API, roadmap
├── docker-compose.yml
└── .env.example
```

Подробный план этапов: `docs/ROADMAP.md`.
=======

>>>>>>> d8c2a091c39d760d420c1e157d88a30006389a18
