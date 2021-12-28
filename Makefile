export DATABASE_URL := "postgres://microerp:microerp@127.0.0.1:5432/micro-erp"

db-copy:
	heroku pg:push postgres://microerp:microerp@127.0.0.1:5432/micro-erp postgresql-amorphous-14795 --app micro-erp-backend

db-connect:
	heroku pg:psql postgresql-amorphous-14795 --app micro-erp-backend

db-reset:
	heroku pg:reset --app micro-erp-backend --confirm micro-erp-backend

db-credentials:
	heroku pg:credentials:url DATABASE --app micro-erp-backend	
