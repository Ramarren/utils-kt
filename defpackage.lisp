#|

    Utils-kt

 Copyright (c) 1995,2010 by Kenneth William Tilton.

 Permission is hereby granted, free of charge, to any person obtaining a copy 
 of this software and associated documentation files (the "Software"), to deal 
 in the Software without restriction, including without limitation the rights 
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell 
 copies of the Software, and to permit persons to whom the Software is furnished 
 to do so, subject to the following conditions:

 The above copyright notice and this permission notice shall be included in 
 all copies or substantial portions of the Software.

 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR 
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE 
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING 
 FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS 
 IN THE SOFTWARE.

|#

(in-package :cl-user)


(eval-when (:compile-toplevel :load-toplevel :execute)
;;;  #+(and its-alive! (not debugging-alive!))
;;;  (proclaim '(optimize (speed 3) (safety 1) (space 1) (debug 0)))
;;;  #-(and its-alive! (not debugging-alive!))
  (proclaim '(optimize (speed 2) (safety 1) (space 1) (debug 3))))

(defpackage :utils-kt
  (:nicknames #:ukt)
  (:use #:common-lisp
    #+(or allegro lispworks clisp) #:clos
    #+cmu  #:mop
    #+sbcl #:sb-mop
    #+openmcl-partial-mop #:openmcl-mop
    #+(and mcl (not openmcl-partial-mop))  #:ccl)
  (:export
    #:export!
    #:utils-kt-reset
    #:count-it #:count-of #:with-counts
    #:wdbg #:maptimes #:bwhen #:bif #:xor
    #:with-dynamic-fn #:last1 #:packed-flat! #:with-metrics
    #:shortc
    #:intern$
    #:define-constant #:*count* #:*stop*
    #:*dbg*
   #:with-gensyms
    #:make-fifo-queue #:fifo-queue #:fifo-add #:fifo-delete
    #:fifo-empty #:fifo-pop #:fifo-clear
    #:fifo-map #:fifo-peek #:fifo-data #:with-fifo-map #:fifo-length

    #-(or lispworks mcl) #:true
    #+(and mcl (not openmcl-partial-mop)) #:class-slots
    )
  (:export    ;; also exports
   #:brk #:right$ #:conc-list$ #:empty$
   #:subseq-contiguous-p #:test-prep
   #:dd-mmm-yy #:mm/dd #:find-after
   #:list-flatten! #:conc$
   #:tree-includes #:-1?1 #:cc-defstruct
   #:week-time #:test-setup #:b1
   #:b-if #:maphash* #:min$
   #:ymdhmsh #:cc$ #:+lf$+
   #:class-proto #:trim$ #:remove$
   #:hashtable-assoc #:month-abbreviation
   #:timex #:space$ #:up$
   #:pair-off #:down$ #:mdyy-yymd
   #:upper$ #:clock-0 #:assoc$
   #:eval-now! #:abbrev$
   #:tree-intersect #:hour-min-of-day
   #:collect #:assocd
   #:weekday-abbreviation #:numeric$
   #:mid$ #:find$ #:yyyy-mm-dd
   #:trunc$ #:m/d/y #:char$
   #:clock-off #:list-insertf #:prime?
   #:b-when #:member$ #:clock
   #:instance-slots #:num$
   #:tree-traverse #:tree-flatten
   #:rassoca #:project-path
   #:find-before #:count-it! #:match-left$
   #:u-date #:u-time #:alpha$
   #:push-end #:normalize$ #:now
   #:list-insert-after #:without-repeating
   #:mmm-dd-yyyy #:time-in-zone
   #:split-sequence #:case-string-equal
   #:seg$ #:lower$ #:shuffle
   #:insert$ #:left$ #:multiple-value-bind
   #:equal$ #:case$ #:make$
   #:collect-if #:+return$+ #:u-day
   #:test-init #:time-of-day
   #:os-tickcount #:strloc$
   #:subseq-ex #:eo #:mvb #:dsb #:mpt
   #:mm-ss))
