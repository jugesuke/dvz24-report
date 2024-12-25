init:
	docker compose down
	docker compose build
build:
	docker compose run --rm texlive bash -c "mktexlsr && luaotfload-tool --update && latexmk main.tex"
	docker compose up textlint
inspect:
	docker compose run --rm texlive bash
debug:
	docker compose run --rm texlive mktexlsr && luaotfload-tool --update && latexmk main.tex 
clean:
	docker compose run --rm texlive latexmk -c
lint:
	docker compose up textlint
fontlist:
	docker compose run --rm texlive bash -c "mktexlsr && luaotfload-tool --update && luaotfload-tool --list=*"
