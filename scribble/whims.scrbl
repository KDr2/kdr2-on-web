#lang scribble/manual

@(require "../src/main.rkt")

@title[#:style favicon #:tag "whims"]{Spark, whims!}

I occasionally come up with some weird thoughts, but I don't know with
whom I can share them, so I throw them here. The first section
@bold{Sparkles} is a dynamic list which is updated from time to time,
and the second section @bold{Torches} is a list of selected whims.

@section{Sparkles}

@div{whims}
@; Here we need a script, but to make the page rendering smooth, I put
@; the script at the end of the file.

@section{Torches}

@md|{

- 一个人，总得喜欢点什么，痴迷点什么，讨厌点什么，鄙视点什么。如果你出
  于某些原因不敢表达自己的这些情感，那你不止是在内敛，你会逐渐失去自我。
  [2023.04.07]

- 经我多年调查研究发现，电视上放任何语言的外文歌曲都有很大概率被认为是
  意大利语歌曲。其原因是，字幕中“歌词大意”一词和“意大利”非常接近，都含
  有“大意”两个字。[2024.02.16]

}|

@; script for dynamic whims:
@script{https://kdr2.pythonanywhere.com/m.js?element_id=whims}
