coverage erase

Remove-Item .coverage.*
if (Test-Path "$(Get-Location).Path\\test_error") {
  Remove-Item test_error*
}

# Build and Run docker test on python12
docker build -t python12 .
docker run --name test --env-file .env -v ${PWD}:/mnt/app -it -d python12
docker exec test /bin/bash -c "rsync -av --exclude-from=/mnt/app/rsync-exclude.txt /mnt/app /"

docker exec test /bin/bash -c ".venv/bin/pip install -r requirements.txt"
docker exec test /bin/bash -c ".venv/bin/pip install -e ."

if (Test-Path "$(Get-Location).Path\\test_error*" -pathtype leaf) {
  docker exec test /bin/bash -c "rm test_error*"
}

docker exec test /bin/bash -c "/app/.venv/bin/python3 -m coverage run -m pytest; if [ `$? -ne 0 ]; then touch test_error_py312; fi"

docker exec test /bin/bash -c "/app/.venv/bin/python3 -m coverage combine"
docker exec test /bin/bash -c "/app/.venv/bin/python3 -m coverage html"

docker exec test /bin/bash -c "/app/.venv/bin/python3 -m coveralls"

docker exec test /bin/bash -c "rsync -av --exclude-from=/mnt/app/rsync-exclude.txt /app /mnt"

docker stop test
docker rm test

if (Test-Path "$(Get-Location).Path\\test_error*" -pathtype leaf) {
  Write-Host "Quiting, pytest exit with an error"
  exit
}

if (!(Test-Path .coverage* -pathtype leaf)) {
  Write-Host "No coverage file created!"
  exit
}

.\.venv-dev\Scripts\Activate.ps1

# python -m build

# twine upload -r testpypi dist/*
# twine upload -r pypi dist/*

deactivate
