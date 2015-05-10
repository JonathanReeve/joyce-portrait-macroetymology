rmwm-chapter.pdf : rmwm-chapter.md
	pandoc -o rmwm-chapter.pdf rmwm-chapter.md \
		--latex-engine=xelatex \
		--filter pandoc-crossref \
		--filter pandoc-citeproc
	gvfs-open rmwm-chapter.pdf &

docx: 
	pandoc -o rmwm-chapter.docx rmwm-chapter.md \
		--filter pandoc-crossref \
		--filter pandoc-citeproc
	gvfs-open rmwm-chapter.docx &

