#lang scribble/manual
@;; -*- mode: auto-fill -*-

@(require "../../rkt/main.rkt")

@title[#:style favicon]{Avoid blurry rendering of SVG paths in Chromium}

[2019-11-04]

In the past few days, I am on a project of rendering PDF files to SVG
files. After some hard work, I finally managed to implement the
renderer, though some features, like translucent images, were not well
supported.

With my PDF to SVG renderer, I conveniently got many perfect SVG files
from a testing PDF file set. Yeah, these SVG files were perfect when I
viewed them with Firefox, Inkscape, or even gThumb. But soon I found
when I viewed them with Chromium, some of them are not that perfect. A
few characters were too blur to recognize.

This image is a screenshot of Firefox:

@ext-image[400]{img-kdr2-com/2019/11/SVG-Text-Path-Firefox.png}

And this is the same file in Chromium:

@ext-image[400]{img-kdr2-com/2019/11/SVG-Text-Path-Chromium.png}

I'd better fix this as the Chromium (and Chrome) is the most popular
browser nowadays. I tried many vain approaches, like trying any
possible value of the @code{shape-rendering} attribute for the SVG
files, and none of them worked.

I didn't know how Chromium renders SVG, but I saw that in the blurrily
rendered SVG file, not all of the characters were murky. So, I thought
if I could finger out the difference of the SVG elements which
contained the clear characters and the murky characters, I would get
the reason. It proved a successful try. I found the murky characters
were in @code{path} SVG elements who had a very large value for their
@code{d} attribute while the clear ones were in elements with small
@code{d} attribute.

There must be a threshold of the size of @code{d} attribute, if a
@code{path} element has a value of @code{d} larger than it, Chromium
will render that path blurrily. But, instead of going to find that
threshold, I fix my problem empirically: I broke paths represented
long texts into smaller paths corresponding to short texts. In my
case, it is fine to regard text with @bold{less than 6 Chinese
characters} as short text.
