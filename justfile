alias b := build
alias w := watch
alias d := down
alias n := nuke

set shell := ["sh", "-c"]

[default]
_:
    @just --list --unsorted --list-prefix "···· "

# Delete files ignored by `git`
clean:
    git clean -Xdf

env:
    cp .env.example .env

build:
    docker compose build

up:
    docker compose up -d

watch:
    docker compose up --watch

down:
    docker compose down

[confirm]
nuke:
    docker compose down -v --remove-orphans