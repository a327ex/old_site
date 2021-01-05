etlua = require 'etlua'

get_head = ->
  return [[
    <meta charset="uft-8">
    <title><%= title %></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto&family=Roboto+Mono&display=swap">
    <link rel="stylesheet" href="assets/style.css">
    <link rel="stylesheet" href="assets/gruvbox-dark.css">
    <link rel="stylesheet" href="assets/zoom.css">
    <link rel="icon" href="assets/shun.png">
    <style>
      #mc_embed_signup #mce-EMAIL {font-family: 'Roboto',sans-serif; font-size: 14pt; font-weight: 400; padding: 0.4em; width: 350px; border: 1px solid #888}
      #mc_embed_signup #mc-embedded-subscribe {cursor: pointer; font-familty: 'Roboto',sans-serif; font-size: 16pt; font-weight: 600; margin-top: 0.4em; margin-bottom: 0.5em; border: 1px solid black; padding: 0.4em; background-color: black; color: white}
    </style>
  ]]

get_email = ->
  return [[
    <!-- Begin Mailchimp Signup Form -->
    <div id="mc_embed_signup">
    <form action="https://gmail.us7.list-manage.com/subscribe/post?u=096941f52959b1ab6e03a63fd&amp;id=bd4ff37666" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate>
        <div id="mc_embed_signup_scroll">
      
    <div class="mc-field-group">
      <input type="email" value="" name="EMAIL" class="required email" placeholder="you@email.com" id="mce-EMAIL">
    </div>
      <div id="mce-responses" class="clear">
        <div class="response" id="mce-error-response" style="display:none"></div>
        <div class="response" id="mce-success-response" style="display:none"></div>
      </div>    <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
        <div style="position: absolute; left: -5000px;" aria-hidden="true"><input type="text" name="b_096941f52959b1ab6e03a63fd_bd4ff37666" tabindex="-1" value=""></div>
        <div class="clear"><input type="submit" value="Subscribe to newsletter" name="subscribe" id="mc-embedded-subscribe" class="button"></div>
        </div>
    </form>
    </div>
  ]]

get_devlog = ->
  content = [[<table width="100%%"><tr><td width="50%%" valign="top" align="center">]]
  files = {}
  for log in io.popen("dir devlog /b")\lines!
    file_title = log\sub(1, log\find'%.'-1)
    table.insert files, file_title
  for i = #files, 1, -1
    content ..= [[<td width="50%%" valign="top" align="center">]] if i == math.floor(#files/2)
    content ..= "<span class='devlog-title'><a href='devlog/#{files[i]}'>#{files[i]}</a></span><br>"
  content ..= [[</table>]]
  return content

convert_markdown = (file) ->
  body = io.popen("binaries\\pandoc -f gfm #{file}", "r")\read"*a"
  body = body\gsub '<img src="([^"]*)">', '<img src="%1" data-action="zoom">'
  body = body\gsub '{{email}}', get_email!
  body = body\gsub '{{devlog}}', get_devlog!
  _, _, title = body\find 'title: ([^\n]*)'
  _, _, date = body\find 'date: ([^\n]*)'
  _, _, tags = body\find 'tags: ([^\n]*)'
  content = ''
  content ..= body
  if file == "index.md" then content ..= [[<script src="assets/zoom.min.js"></script><script src="assets/highlight.pack.js"></script><script>hljs.initHighlightingOnLoad();</script>]]
  else content ..= [[<script src="../assets/zoom.min.js"></script><script src="../assets/highlight.pack.js"></script><script>hljs.initHighlightingOnLoad();</script>]]
  return content, title, date, tags

build_page = (filename, title, body) ->
  content = ''
  content ..= etlua.render get_head!, {:title}
  content ..= body
  file = io.open filename, "w"
  file\write content
  file\close!

-- Build main page
content, title = convert_markdown "index.md"
build_page "docs/index.html", title, content
