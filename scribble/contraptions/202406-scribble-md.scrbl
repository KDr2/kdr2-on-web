#lang scribble/manual

@(require "../../src/main.rkt")

@title[#:style favicon]{Use Markdown in Scribble}

Scribble is neat, programmable and producing good quality output, but
sometimes it's tedious to write, especially while writing lists and
links.

I found there's a markdown package providing a parser and converting
the parsed markdown to scribble contents, so it's easy to add markdown
support in scribble.

@codeblock{
(require markdown)
(require markdown/scrib)

(define (md . lines)
  (let* ((str (apply string-append lines))
         (xpr (parse-markdown str)))
    (xexprs->scribble-pres xpr)))
}

Then in the scribble file, we can write:

@codeblock||{
@md|{
This paragraph is written in **Markdown**.

The feature is powered by [package
markdown](https://docs.racket-lang.org/markdown/). We use two modules
to do this:

- markdown
- markdown/scrib

}|
}||

and that renders:

@md|{

This paragraph is written in **Markdown**.

The feature is powered by [package
markdown](https://docs.racket-lang.org/markdown/). We use two modules
to do this:

- markdown
- markdown/scrib

}|
