# LaTeX Templates
This repository contains templates to create technical documentations and presentations using LaTeX.

## Requirements 
Following software should be installed in advance (Win/MacOS/Linux):
- MiKTeX [download](https://miktex.org/download) (compiler)
- Texmaker [download](https://www.xm1math.net/texmaker/download.html) (editor)

## Template Infos

### Documentation
![documentation](img-doc.png)
Source files can be found [here](documentation/).

Setup:
- Set build mode in Texmaker: "Options" &rarr; "Configure Texmaker" &rarr; "Quick Build" &rarr; "PdfLaTeX + **Bib(la)tex + PdfLaTeX (x2) + View Pdf**."
- Open [main.tex](documentation/main.tex) with Texmaker. Set this as master document: "Options" &rarr; "**Define Current Document as 'Master Document'**".
- Open `*.tex` files under [content/](documentation/content/) with Texmaker to edit the content.
- Hit `F1` to compile.

Tips:
- Images should be pasted in [img/](documentation/img/) directory. They should be renamed with a prefix number `01_*` or `02_*` to match the nth-section in the content. This way, the images are ordered and can be identified more quickly.
- Title page is editable in [doku-tpl.cls](documentation/doku-tpl.cls#L32-L77) and in [main.tex](documentation/main.tex#L218-L228).
- Header/footer are editable in [main.tex](documentation/main.tex#L250-L256).
- Abbreviations are editable in [80_abbreviations.tex](documentation/content/80_abbreviations.tex). They must be ordered manually in the end - excel can help.
- Bibliography is editable in [main.bbl](documentation/main.bbl). Each entry needs a unique `label` which can be used as `\cite{label}` in the content to identify the resource.
- Section headers should always be written in uppercase (example: "Initial Situation" instead of "Initial situation").
- Main sections (`\section()`) should be started with a short overview text that describes the content of the upcoming section.
- Confidential or public sections can be defined by:
  ```
  \iflong{
	Confidential content
  }
  \else{
	Public content
  }\fi
  ```
  To switch between the compiled versions, either `\longtrue` or `\longfalse` can be uncommented in [main.tex](documentation/main.tex#L28-L29).
- Attachment PDFs can be pasted in [attachments/](documentation/attachments/) and be included in appendix with `\includepdf{attachment.pdf}`, see [90_appendix.tex](documentation/content/90_appendix.tex#L69-L73).

### Presentation
![presentation](img-pre.png)
Source files can be found [here](presentation/).

Setup:
- Set build mode in Texmaker: "Options" &rarr; "Configure Texmaker" &rarr; "Quick Build" &rarr; "PdfLaTeX + **Bib(la)tex + PdfLaTeX (x2) + View Pdf**."
- Open [main.tex](presentation/main.tex) with Texmaker. Set this as master document: "Options" &rarr; "**Define Current Document as 'Master Document'**".
- Hit `F1` to compile.

Tips:
- Start with appealing intro to catch the attention of the audience (maybe short demonstration or audio/video about possible impact of positive outcome of the presenting subject).
- Note 2-3 bullet points next to each figure.
- Always mention source of images in slides. Use shortener for long URLs: [bitly](https://bitly.com).
- Maximum of 16-17 slides with main content for 20min presentation time. Do not undershoot 1min per slide.
- Less is more.

## More Infos
- Basics tutorial: [flutterbys](https://www.flutterbys.com.au/stats/tut/tut17.1.html)
- Abbreviations: [illinois.edu](http://ctan.math.illinois.edu/macros/latex/contrib/acronym/acronym.pdf)
- Special characters: [oeis](https://oeis.org/wiki/List_of_LaTeX_mathematical_symbols)