
# Uso de Variables
# https://ftp.gnu.org/old-gnu/Manuals/make-3.79.1/html_chapter/make_6.html

TEMPLATE = "./templates/book-template.tex"
TOP_LEVEL_DIVISION = "chapter"
TITLEPAGE_COLOR = "EEEEEE"
TITLEPAGE_RULE_HEIGHT = 8
TITLEPAGE_BACKGROUND = "./templates/figures/titlepage-background-template.pdf"
PAGE_BACKGROUND = "./templates/figures/page-background-template.pdf"
PAGE_BACKGROUND_OPACITY = 0.8
FOOTER_RIGHT = "Página \thepage"
INSTITUTE = "Ibon Martínez-Arranz"
AUTHOR = "Ibon Martínez-Arranz"
TITLE = "Aventuras de Programación en Python en la Isla del Tesoro"
OUTPUT = "book"

all: book-pdf

book-pdf:
	pandoc \
		docs/appit-00-introducción.md \
		docs/appit-01-el-viaje-comienza.md \
		docs/appit-02-la-carta-del-capitán.md \
		docs/appit-03-el-mapa-del-tesoro.md \
		docs/appit-04-abordando-el-barco-pirata.md \
		docs/appit-05-búsqueda-del-tesoro.md \
		docs/appit-06-enfrentamiento-con-piratas.md \
		docs/appit-07-el-tesoro-encontrado.md \
		docs/appit-08-zarpa-de-la-isla.md \
		docs/appit-09-regreso-a-casa.md \
		docs/appit-10-más-aventuras-piratas.md \
		docs/appit-11-apéndice.md \
		docs/appit-12-conclusión.md \
		--output $(OUTPUT)".pdf" \
		--from markdown \
		--template $(TEMPLATE) \
		--toc \
		--variable book=True \
		--top-level-division $(TOP_LEVEL_DIVISION) \
		--listings \
		--variable titlepage=True \
		--variable titlepage-color=$(TITLEPAGE_COLOR) \
		--variable titlepage-rule-height=$(TITLEPAGE_RULE_HEIGHT) \
		--variable titlepage-background=$(TITLEPAGE_BACKGROUND) \
		--variable page-background=$(PAGE_BACKGROUND) \
		--variable page-background-opacity=$(PAGE_BACKGROUND_OPACITY) \
		--variable footer-right=$(FOOTER_RIGHT) \
		--variable linkcolor=primaryowlorange \
		--variable urlcolor=primaryowlorange \
		--variable institute=$(INSTITUTE) \
		--filter pandoc-latex-environment \
		--metadata=title:$(TITLE) \
		--metadata=author:$(AUTHOR)

	pdftk templates/figures/cover.pdf book.pdf cat output Aventuras\ de\ Programación\ en\ Python\ en\ la\ Isla\ del\ Tesoro.pdf
	rm book.pdf


# https://github.com/Wandmalfarbe/pandoc-latex-template
# https://pypi.org/project/pandoc-latex-environment/
# https://pandoc-latex-tip.readthedocs.io/en/latest/index.html
# https://pandoc-latex-environment.readthedocs.io/en/latest/
