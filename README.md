#html-email code helper

###current branch: dev

This is an in progress sinatra app to help build consistent html email.  
There are many quirks and tricks to add to the code to ensure a good cross
compatibility. And it's easy to forget details or get lost in the busy code
that an html email require.

The aim of this project is to take out repetitive task and set a batch of
default to build safer emails structure faster

##TODO

- test support for semantinc markup (with style tag in head) – Outlook, online client in Explorer discrepencies (AOL, Hotmail, Yahoo)
- test support for max-width and responsive layout


##Changed
- changed generic css (removed line-height:100% and height: auto on images)
- removed colspan columns handling (nested tables to improve cross compatibility – outlook)
- moved section separators (border) to the different sections table tag
- left img {max-width: 100%} as default inline style to test flexible email layout

##Quirks to know

#### layout

- Avoid use of complex colspan to create multicolumns layout, use nested table instead (Outlook quirks)
- Avoid hr/ to separate section (difficult to style), add border to section table elements
- Break code into differents table modules, make it easier to style and test
- Add font style to every table cells
- avoid semantic markup for copy, elements need to be styled one by one to ensure margins/paddings/etc... works. It's easier to style a whole block of copy in a table cell and space copy with br/ 

#### border styles
- border styles don't show on empty tables? (re-test)
- border styles nedd to expanded (no shorthand css) on table cells - don't
  show in lotus notes < 8, Hotmail Firefox etc..
- border style can be written with shorthand on table elements

#### paddings
- Aol Explorer, Gmail Explorer, Hotmail Explorer, Yahoo Explorer, Lotus Notes, Outlook < 2007 have no support for padding style on `<td>`


##references

- <http://kb.mailchimp.com/article/how-to-code-html-emails>
- <http://msdn.microsoft.com/en-us/library/aa338201.aspx>
- <http://htmlemailboilerplate.com/>
- <http://www.clickz.com/clickz/column/1800179/html-code-affects-email-deliverability>
- <http://www.campaignmonitor.com/css/>
- to be continued ...
