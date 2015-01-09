%.html: %.txt
	rst2html --stylesheet=/dev/null -- $< >$@


.PHONY: all
all: docs


.PHONY: docs
docs: INSTALL.html torrent-INSTALL.html xml-INSTALL.html


CLEANFILES = *.py[co]

.PHONY: clean
clean:
	rm -f $(CLEANFILES)
