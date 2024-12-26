
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
		books/appit-00-introducción.md \
		books/appit-01-el-viaje-comienza.md \
		books/appit-02-la-carta-del-capitán.md \
		books/appit-03-el-mapa-del-tesoro.md \
		books/appit-04-abordando-el-barco-pirata.md \
		books/appit-05-búsqueda-del-tesoro.md \
		books/appit-06-enfrentamiento-con-piratas.md \
		books/appit-07-el-tesoro-encontrado.md \
		books/appit-08-zarpa-de-la-isla.md \
		books/appit-09-regreso-a-casa.md \
		books/appit-10-más-aventuras-piratas.md \
		books/appit-11-apéndice.md \
		books/appit-12-conclusión.md \
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

TEMPLATE = "./templates/book-template.tex"
TOP_LEVEL_DIVISION = "chapter"
TITLEPAGE_COLOR = "EEEEEE"
TITLEPAGE_RULE_HEIGHT = 8
TITLEPAGE_BACKGROUND = "./templates/figures/titlepage-background-template-a5.pdf"
PAGE_BACKGROUND = "./templates/figures/page-background-template-a5.pdf"
PAGE_BACKGROUND_OPACITY = 0.8
FOOTER_RIGHT = "Page \thepage"
INSTITUTE = "Ibon Martínez-Arranz"
AUTHOR = "Ibon Martínez-Arranz"
PAPERSIZE = "a5"
FONTSIZE = 11
GEOMETRY = 1.5cm
TITLEBOOK = "Aventuras de Programación en Python en la Isla del Tesoro"
INTERMEDIATE_OUTPUT = "book"
INFO = "pdf.info"
OUTPUT = "book"

book-pdf-a5:

	pandoc \
		books/appit-00-introducción.md \
		books/appit-01-el-viaje-comienza.md \
		books/appit-02-la-carta-del-capitán.md \
		books/appit-03-el-mapa-del-tesoro.md \
		books/appit-04-abordando-el-barco-pirata.md \
		books/appit-05-búsqueda-del-tesoro.md \
		books/appit-06-enfrentamiento-con-piratas.md \
		books/appit-07-el-tesoro-encontrado.md \
		books/appit-08-zarpa-de-la-isla.md \
		books/appit-09-regreso-a-casa.md \
		books/appit-10-más-aventuras-piratas.md \
		books/appit-11-apéndice.md \
		books/appit-12-conclusión.md \
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
		--filter pandoc-latex-environment \
		--variable linkcolor=primaryowlorange \
		--variable urlcolor=primaryowlorange \
		--metadata=title:$(TITLEBOOK) \
		--metadata=author:$(AUTHOR) \
		--variable institute=$(INSTITUTE) \
		--variable papersize=$(PAPERSIZE) \
		--variable fontsize=$(FONTSIZE) \
		--variable geometry:left=$(GEOMETRY) \
		--variable geometry:right=$(GEOMETRY) \
		--variable geometry:top=2.5cm \
		--variable geometry:bottom=2.5cm


	pdftk templates/figures/cover-a5.pdf \
	      book.pdf cat \
	      output Aventuras\ de\ Programación\ en\ Python\ en\ la\ Isla\ del\ Tesoro\ A5.pdf
	rm book.pdf


# https://github.com/Wandmalfarbe/pandoc-latex-template
# https://pypi.org/project/pandoc-latex-environment/
# https://pandoc-latex-tip.readthedocs.io/en/latest/index.html
# https://pandoc-latex-environment.readthedocs.io/en/latest/
