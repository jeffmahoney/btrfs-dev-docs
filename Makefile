ASCIIDOC = /usr/bin/asciidoc
ASCIIDOC_ARGS = -f asciidoc.conf
ASCIIDOC_HTML = html
ASCIIDOC_DOCBOOK = docbook
ASCIDOC_DEPS = asciidoc.conf

%.html : %.asciidoc $(ASCIIDOC_DEPS)
	rm -f $@+ $@
	$(ASCIIDOC) $(ASCIIDOC_ARGS) -b $(ASCIIDOC_HTML) -d article -o $@+ $<
	mv $@+ $@


all-html : relocation.html disk-format.html

all: all-html
