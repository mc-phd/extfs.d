.SUFFIXES: # Clear the suffix list
.SUFFIXES: .txt .html


%.html: %.txt
	rst2html.py --stylesheet=/dev/null -- $< >$@


.PHONY: all
all: docs


.PHONY: docs
docs: INSTALL.html torrent-INSTALL.html xml-INSTALL.html


CLEANFILES = *.py[co]

.PHONY: clean
clean:
	rm -f $(CLEANFILES)
