all: lecture1_MRI.md
	mkdir -p _site
	#pandoc -t slidy -m"jscripts/LaTeXMathML.js" --self-contained lecture1_MRI.md -o _site/index.html
	#pandoc -t slidy --mathml --self-contained lecture1_MRI.md -o _site/index.html
	pandoc -t slidy --template=math_slides.slidy --mathjax="http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML" lecture1_MRI.md -o _site/index.html
	cp -r imgs/ _site/imgs
