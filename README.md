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
- Open `*.tex` files under [content/](content/) to edit the content of documentation.

Tips:
- Images should be pasted in `img/`. They should be renamed with a prefix number `01_` or `02_` to identify the section in the content. This way, the images are ordered and can be identified faster.
- Title page is editable in `main.tex` line 218ff.
- Abbreviations are editable in [80_abbreviations.tex](content/80_abbreviations.tex) (must be sorted manually, excel can help). Additional information can be found [here](http://ctan.math.illinois.edu/macros/latex/contrib/acronym/acronym.pdf).
- Bibliography is editable in `main.bbl`. Each entry needs a unique label which can be used as `\cite{label}` in the content.
- Section headers should always be written in uppercase.
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
  To switch between the compiled versions, either `\longtrue` or `\longfalse` can be uncommented in [main.tex](content/main.tex) line 27ff.
- Attachment PDFs can be pasted in `attachments/` and be included in appendix with `\includepdf{attachment.pdf}`, see [90_appendix.tex](content/90_appendix.tex) line 69ff.

### Presentation
Source files can be found [here](presentation/).

Setup:
- Set build mode in Texmaker: Options &rarr; Configure Texmaker &rarr; Quick Build &rarr; PdfLaTeX + **Bib(la)tex + PdfLaTeX (x2) + View Pdf**.
- Open `main.tex`. Set this as master document: Options &rarr; **Define Current Document as 'Master Document'**.

Tips:
- Start with catchy intro to catch the attention of the audience (maybe short demonstration or audio/video about possible impact of positive outcome of the presenting subject).
- Note 2-3 bullet points next to each figure.
- Always mention source of images in slides. Use shortener for long URLs: [bitly](https://bitly.com).
- Maximum 16-17 slides with main content for 20min presentation time. Do not undershoot 1min per slide.
- Less is more.

## More 

more (e.g. special chars):
[flutterbys](https://www.flutterbys.com.au/stats/tut/tut17.1.html)