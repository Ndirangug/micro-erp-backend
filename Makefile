db-copy:
	export DATABASE_URL="postgres://microerp:microerp@127.0.0.1:5432/micro-erp" && \
	heroku pg:push ${DATABASE_URL}  postgresql-amorphous-14795 --app micro-erp-backend

db-connect:
	heroku pg:psql postgresql-amorphous-14795 --app micro-erp-backend

push_db:
	export DATABASE_URL="host=localhost user=microerp password=microerp dbname=micro-erp port=5432 sslmode=disable TimeZone=Africa/Nairobi" && \
	heroku pg:push DATABASE_URL  postgresql-amorphous-14795 --app micro-erp-backend

db-credentials:
	heroku pg:credentials:url DATABASE --app micro-erp-backend	
