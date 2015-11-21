rmwm-chapter.pdf : rmwm-chapter.md
	pandoc -o rmwm-chapter.pdf rmwm-chapter.md \
		--latex-engine=xelatex \
		--filter pandoc-crossref \
		--filter pandoc-citeproc \
		--citation-abbreviations=citation-abbreviations.json \
		-V links-as-notes
	gvfs-open rmwm-chapter.pdf &

docx: 
	pandoc -o rmwm-chapter.docx rmwm-chapter.md \
		--filter pandoc-crossref \
		--filter pandoc-citeproc
		--citation-abbreviations=citation-abbreviations.json \
		-V links-as-notes
	gvfs-open rmwm-chapter.docx &

md: 
	pandoc -o rmwm-chapter.html rmwm-chapter.md \
		--filter pandoc-crossref \
		--filter pandoc-citeproc 
	pandoc -o rmwm-chapter-compiled.md rmwm-chapter.html 
	gvfs-open rmwm-chapter-compiled.md &
