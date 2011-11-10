#html-email code helper

###current branch: dev

This is an in progress Sinatra app to help build consistent html email.  
There are many quirks and tricks to add to the code to ensure a good cross
compatibility. And it's easy to forget details or get lost in the busy code
that an html email require.

The aim of this project is to take out repetitive task and set a batch of
default to build safer emails structure faster

##TODO

- re-test support for semantic markup (with style tag in head) – Outlook, online client in Explorer discrepancies (AOL, Hotmail, Yahoo - problems with browsers and old or new versions - make list)
- test support for max-width and responsive layout


##Changed
- added dimension to all images to protect layout integrity when images
are blocked or don't load
- added table wrapper around copy images to force Outlook > 2003 to
respect the %br\ space with the copy
-added quick width setter helper
- moved %hr table border style to standalone table so that Lotus Notes
< 8 doesn't wrap copy with a top and bottom border (if spacing is "flexible"
use `<hr>` pattern ?)

##Quirks to know

#### layout

- Avoid use of complex colspan to create multicolumn layout, use nested tables instead (Outlook quirks)
- Avoid hr/ to separate section (difficult to style), add border to section table elements
- Break code into different table modules, make it easier to style and test
- Add font style to every table cells
- avoid semantic markup for copy, elements need to be styled one by one to ensure margins/paddings/etc work. It's easier to style a whole block of copy in a table cell and space copy with br/ 

#### border styles
- border styles don't show on empty tables? (re-test)
- border styles have to be expanded (no shorthand css) on table cells - don't
  show in lotus notes < 8, Hotmail Firefox etc..
- border style can be written with shorthand on table elements (Lotus notes 7 not reliable though)

#### images

- in copy block spaced with `<br/><br/>` pattern, it is necessary to wrap `<img
  />` tags in a table to preserve the spacing in Outlook (`>`2003).
- dimensions need to be added to the images so that the integrity of the layout
  is preserved when the images don't load. Plus Outlook add copy to the alt
  attributes when images blocked. This expand the cell containers if dimensions
  are not set.

#### paddings
- Aol Explorer, Gmail Explorer, Hotmail Explorer, Yahoo Explorer, Lotus Notes, Outlook < 2007 have no support for padding style on `<td>`


##references

- <http://kb.mailchimp.com/article/how-to-code-html-emails>
- <http://msdn.microsoft.com/en-us/library/aa338201.aspx>
- <http://htmlemailboilerplate.com/>
- <http://www.clickz.com/clickz/column/1800179/html-code-affects-email-deliverability>
- <http://www.campaignmonitor.com/css/>
- to be continued ...
