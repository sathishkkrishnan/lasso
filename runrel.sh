mix deps.get --only prod
mix compile
npm run deploy --prefix ./assets
mix phx.digest
MIX_ENV=prod APP_NAME=lasso MIX_ENV=prod mix release
_build/prod/rel/lasso/bin/lasso start
