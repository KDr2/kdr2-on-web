#lang scribble/manual

@(require "../../rkt/main.rkt")
@(define q "\"")

@title[#:style favicon]{How to type German and Spanish characters}

Now, I am learning Español(Spanish) and Deutsch(German). There are
many special characters in these two languages, like accents and
umlauts. So I spent a little time to find out how to type these
characters on all my computers, and below are what I've gotten.

@section[#:style '(toc-hidden)]{Windows}

I use Windows 11. First I setup the keyboard layout to use my right
@icode{Alt} key as a @icode{Alt Gr} key:

Start -> Settings -> Time & Language -> Language -> Preferred Language
-> Click on "English" (click "add a language" if there's no English in
the list) -> Click "Options" on the "English" item -> Click "Add a
keyboard" then select @bold{United States - International}.

After I've done that, I got an @bold{ENG-INTL} input method. By
switching to this input method, I can do:

@itemlist[

@item{To insert ß, press @icode{RAlt+s}}
@item{For umlauts, e.g. ü, press @icode{@q u}}
@item{For accents, e.g. á, press @icode{' a}}
@item{For ñ, press @icode{Shift+​ n}}
@item{For ¿, press @icode{RAlt+/}}
@item{For ¡, press @icode{RAlt+1}}
@item{For ', @q, and ~, press the corresponding key then press @icode{Space}}

]

@section[#:style '(toc-hidden)]{Linux}

Run @icode{setxkbmap -layout us -option compose:ralt} to set the Right
Alt key as the compose key, then:

@itemlist[

@item{To insert ß, press @icode{RAlt s s}}
@item{For umlauts, e.g. ü, press @icode{RAlt @q u} or @icode{RAlt+@q u}}
@item{For accents, e.g. á, press @icode{RAlt ' a} or @icode{RAlt+' a}}
@item{For ñ, press @icode{RAlt Shift+~ n} or @icode{RAlt+Shift+~ n}}
@item{For ¿, press @icode{RAlt ? ?}}
@item{For ¡, press @icode{RAlt ! !}}

]

@section[#:style '(toc-hidden)]{macOS}

@itemlist[

@item{To insert ß, press @icode{Option+s}}
@item{For umlauts, e.g. ä, press @icode{Option+u a}}
@item{For accents, e.g. á, press @icode{Option+e a}}
@item{For ñ, press @icode{Option+n n}}
@item{For ¿, press @icode{Option+?}, i.e. @icode{Option+Shift+/}}
@item{For ¡, press @icode{Option+1}}

]
