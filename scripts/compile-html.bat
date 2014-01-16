node_modules/.bin/jade app/index.jade --pretty --out app/assets/
node_modules/.bin/jade app/partials/ --pretty --out app/assets/partials/

del app/index.jade 
rd /s /q app/partials/
