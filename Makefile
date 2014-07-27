all: lecture1_MRI.md
	mkdir -p _site
	pandoc -t slidy --self-contained lecture1_MRI.md -o _site/index.html
	#cp -r imgs _site/imgs
