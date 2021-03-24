# LaTeX templates
This repository contains templates to create technical documentations and presentations using LaTeX.

## Requirements 
Following software should be installed in advance (Win/MacOS/Linux):
- MiKTeX [download](https://miktex.org/download)
- Texmaker [download](https://www.xm1math.net/texmaker/download.html)

## Templates

### Documentation
Source files can be found [here](documentation/).

Setup:
- Set build mode in Texmaker: Options &rarr; Configure Texmaker &rarr; Quick Build &rarr; PdfLaTeX + **Bib(la)tex + PdfLaTeX (x2) + View Pdf**.
- Open `main.tex`. Set this as master document: Options &rarr; **Define Current Document as 'Master Document'**.
- Open `*.tex` files under [content/](documentation/content/) to edit the content of documentation.

Tips:
- Images should be pasted in [img/](documentation/img/) directory. They should be renamed with a prefix number `01_*` or `02_*` to match the nth-section in the content. This way, the images are ordered and can be identified more quickly.
- Title page is editable in [doku-tpl.cls](documentation/doku-tpl.cls#L32-L91) and in [main.tex](documentation/main.tex#L218-L228).
- Header/footer are editable in [main.tex](documentation/main.tex#L250-L256).
- Abbreviations are editable in [80_abbreviations.tex](documentation/content/80_abbreviations.tex). They must be ordered manually in the end - excel can help. Additional information can be found [here](http://ctan.math.illinois.edu/macros/latex/contrib/acronym/acronym.pdf).
- Bibliography is editable in [main.bbl](documentation/content/main.bbl). Each entry needs a unique `label` which can be used as `\cite{label}` in the content to identify the resource.
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
  To switch between the compiled versions, either `\longtrue` or `\longfalse` can be uncommented in [main.tex](/documentation/content/main.tex#L28-L29).
- Attachment PDFs can be pasted in [attachments/](documentation/attachments/) and be included in appendix with `\includepdf{attachment.pdf}`, see [90_appendix.tex](documentation/content/90_appendix.tex#L69-L73).

### Presentation
Source files can be found [here](presentation/).

Setup:
- Set build mode in Texmaker: Options &rarr; Configure Texmaker &rarr; Quick Build &rarr; PdfLaTeX + **Bib(la)tex + PdfLaTeX (x2) + View Pdf**.
- Open [main.tex](documentation/main.tex). Set this as master document: Options &rarr; **Define Current Document as 'Master Document'**.

Tips:
- Start with catchy intro to catch the attention of the audience (maybe short demonstration or audio/video about possible impact of positive outcome of the presenting subject).
- Note 2-3 bullet points next to each figure.
- Always mention source of images in slides. Use shortener for long URLs: [bitly](https://bitly.com).
- Maximum 16-17 slides with main content for 20min presentation time. Do not undershoot 1min per slide.
- Less is more.

## More 

more (e.g. special chars):
[flutterbys](https://www.flutterbys.com.au/stats/tut/tut17.1.html)