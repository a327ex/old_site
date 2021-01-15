get_head = (title, style) ->
  if title == "adn's web page"
    return "
      <meta charset='uft-8'>
      <title>#{title}</title>
      <meta name='viewport' content='width=device-width, initial-scale=1.0'>
      <!-- Global site tag (gtag.js) - Google Analytics -->
      <script async src='https://www.googletagmanager.com/gtag/js?id=G-09V5DY115J'></script>
      <script>
        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());

        gtag('config', 'G-09V5DY115J');
      </script>
      <link rel='stylesheet' href='https://fonts.googleapis.com/css2?family=Roboto&family=Roboto+Mono&display=swap'>
      <link rel='stylesheet' href='assets/style.css'>
      <link rel='stylesheet' href='assets/atom-one-light.css'>
      <link rel='icon' href='assets/shun.png'>
      <style>
        #mc_embed_signup_scroll {
          display: flex;
          align-items: center;
          justify-content: center;
        }
        #mc_embed_signup #mce-EMAIL {font-family: 'Roboto',sans-serif; font-size: 14pt; font-weight: 400; padding: 0.4em; width: 300px; height: 44px; border: 1px solid #888}
        #mc_embed_signup #mc-embedded-subscribe {cursor: pointer; font-familty: 'Roboto',sans-serif; font-size: 16pt; font-weight: 600; margin-top: 0.4em; margin-bottom: 0.5em; border: 1px solid black; padding: 0.4em; background-color: black; color: white; position: relative; top: 0px; left: -5px; margin: 0}
        #{style or ''}
      </style>"
  else
    return "
      <meta charset='uft-8'>
      <title>#{title}</title>
      <meta name='viewport' content='width=device-width, initial-scale=1.0'>
      <!-- Global site tag (gtag.js) - Google Analytics -->
      <script async src='https://www.googletagmanager.com/gtag/js?id=G-09V5DY115J'></script>
      <script>
        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());

        gtag('config', 'G-09V5DY115J');
      </script>
      <link rel='stylesheet' href='https://fonts.googleapis.com/css2?family=Roboto&family=Roboto+Mono&display=swap'>
      <link rel='stylesheet' href='../assets/style.css'>
      <link rel='stylesheet' href='../assets/atom-one-light.css'>
      <link rel='icon' href='../assets/shun.png'>
      <style>
        #mc_embed_signup_scroll {
          display: flex;
          align-items: center;
          justify-content: center;
        }
        #mc_embed_signup #mce-EMAIL {font-family: 'Roboto',sans-serif; font-size: 14pt; font-weight: 400; padding: 0.4em; width: 300px; height: 44px; border: 1px solid #888}
        #mc_embed_signup #mc-embedded-subscribe {cursor: pointer; font-familty: 'Roboto',sans-serif; font-size: 16pt; font-weight: 600; margin-top: 0.4em; margin-bottom: 0.5em; border: 1px solid black; padding: 0.4em; background-color: black; color: white; position: relative; top: 0px; left: -5px; margin: 0}
        #{style or ''}
      </style>"

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
        <div class="clear"><input type="submit" value="Subscribe" name="subscribe" id="mc-embedded-subscribe" class="button"></div>
        </div>
    </form>
    </div>
  ]]

get_devlog = ->
  content = [[<table width="50%%"><tr><td width="16.6%%" valign="top" align="center">]]
  files = {}
  for log in io.popen("dir devlog /b")\lines!
    file_title = log\sub(1, log\find'%.'-1)
    table.insert files, file_title
  for i = #files, 1, -1
    content ..= [[<td width="16.6%%" valign="top" align="center">]] if i == math.floor(#files/3) or i == math.floor(2*#files/3)
    content ..= "<span class='devlog-title'><a href='devlog/#{files[i]}'>#{files[i]}</a></span><br>"
  content ..= [[</table>]]
  return content

get_comments = ->
  return [[
    <script src="https://utteranc.es/client.js"
      repo="a327ex/a327ex.github.io"
      issue-term="pathname"
      theme="github-light"
      crossorigin="anonymous"
      async>
    </script>
  ]]

[[
get_social_links = ->
  return "
    <br><br><br>
    <div align="center">
    <ul class="social-media-list">
      <li><a href="https://store.steampowered.com/dev/a327ex" target="_blank"><img src="https://unpkg.com/simple-icons@latest/icons/steam.svg" alt="Steam" title="Steam"></a></li>
      <li><a href="https://a327ex.itch.io" target="_blank"><img src="https://unpkg.com/simple-icons@latest/icons/itch-dot-io.svg" alt="itch" title="itch"></a></li>
      <li><a href="https://twitter.com/a327ex" target="_blank"><img src="https://unpkg.com/simple-icons@latest/icons/twitter.svg" alt="Twitter" title="Twitter"></a></li>
      <li><a href="https://github.com/a327ex" target="_blank"><img src="https://unpkg.com/simple-icons@latest/icons/github.svg" alt="GitHub" title="GitHub"></a></li>
      <li><a href="https://www.youtube.com/channel/UCFOaLI21ThFPQxJJ5lFF4SQ" target="_blank"><img src="https://unpkg.com/simple-icons@latest/icons/youtube.svg" alt="YouTube" title="YouTube"></a></li>
      <li><a href="https://reddit.com/r/a327ex" target="_blank"><img src="https://unpkg.com/simple-icons@latest/icons/reddit.svg" alt="reddit" title="reddit"></a></li>
      <li><a href="https://hydancer.tumblr.com" target="_blank"><img src="https://unpkg.com/simple-icons@latest/icons/tumblr.svg" alt="tumblr" title="tumblr"></a></li>
    </ul></div><br>
  "
]]

get_social = ->
  return "
    <div align='center'><br>
    If you'd like to follow my progress, I send monthly-ish updates via email:
    <p>#{get_email!}</p>

    You can also follow me on:
    <a href='https://store.steampowered.com/dev/a327ex' target='_blank'>steam</a>, <a href='https://twitter.com/a327ex' target='_blank'>twitter</a>,
    <a href='https://a327ex.itch.io' target='_blank'>itch</a>, <a href='https://github.com/a327ex' target='_blank'>github</a>, <a href='https://reddit.com/r/a327ex' target='_blank'>reddit</a>,
    <a href='https://www.youtube.com/channel/UCFOaLI21ThFPQxJJ5lFF4SQ' target='_blank'>youtube</a> or <a href='https://hydancer.tumblr.com' target='_blank'>tumblr</a>
    </div>
  "

get_next_prev = (i, files) ->
  if #files == 1
    return "<br>
      <div class='back-to-home'>
        <a href='/' >back to main</a>
      </div>
      <br>"
  elseif i == #files
    prev_title = files[i-1].title
    return "<br>
      <div class='next-prev-post'>
        <div class='post-post-container'>
          <a href='#{prev_title}'>
            <p>< #{prev_title}</p>
          </a>
        </div>
        <div class='post-post-container'>
        </div>
      </div>
      <br>
      <div class='back-to-home'>
        <a href='/' >back to main</a>
      </div>
      <br>"
  elseif i == 1
    next_title = files[i+1].title
    return "<br>
      <div class='next-prev-post'>
        <div class='post-post-container'>
        </div>
        <div class='post-post-container'>
          <a href='#{next_title}'>
            <p>#{next_title} ></p>
          </a>
        </div>
      </div>
      <br>
      <div class='back-to-home'>
        <a href='/' >back to main</a>
      </div>
      <br>"
  else
    prev_title = files[i-1].title
    next_title = files[i+1].title
    return "<br>
      <div class='next-prev-post'>
        <div class='post-post-container'>
          <a href='#{prev_title}'>
            <p>< #{prev_title}</p>
          </a>
        </div>
        <div class='post-post-container'>
          <a href='#{next_title}'>
            <p>#{next_title} ></p>
          </a>
        </div>
      </div>
      <br>
      <div class='back-to-home'>
        <a href='/' >back to main</a>
      </div>
      <br>"

convert_markdown = (file) ->
  body = io.popen("binaries\\pandoc -f gfm #{file}", "r")\read"*a"
  body = body\gsub '<a href="([^"]*)">', '<a href="%1" target="_blank">'
  body = body\gsub '{{email}}', get_email!
  body = body\gsub '{{devlog}}', get_devlog!
  body = body\gsub '{{social}}', get_social!
  body = body\gsub '{{streamable ([%w]*)}}', [[<div style="left: 0; width: 100%%; height: 0; position: relative; padding-bottom: 56.3%%;"><iframe src="https://streamable.com/o/%1" style="border: 0; top: 0; left: 0; width: 100%%; height: 100%%; position: absolute;" allowfullscreen scrolling="no" allow="encrypted-media"></iframe></div>]]
  body = body\gsub '{{youtube ([%w-_]*)}}', [[<div style="left: 0; width: 100%%; height: 0; position: relative; padding-bottom: 56.3%%; margin-top: -0.55em;"><iframe src="https://www.youtube.com/embed/%1?rel=0&playlist=%1&loop=1&modestbranding=1" style="border: 0; top: 0; left: 0; width: 100%%; height: 100%%; position: absolute;" allowfullscreen scrolling="no" allow="encrypted-media; accelerometer; clipboard-write; gyroscope; picture-in-picture"></iframe></div><br>]]
  _, _, title = body\find 'title: ([^\n]*)'
  _, _, date = body\find 'date: ([^\n]*)'
  _, _, update = body\find 'update: ([^\n]*)'
  _, _, tags = body\find 'tags: ([^\n]*)'
  content = ''
  content ..= body
  if file == "index.md" then content ..= [[<script src="assets/zoom.min.js"></script><script src="assets/highlight.pack.js"></script><script>hljs.initHighlightingOnLoad();</script>]]
  else content ..= [[<script src="../assets/highlight.pack.js"></script><script>hljs.initHighlightingOnLoad();</script>]]
  return content, title, date, update, tags

build_page = (filename, title, style, date, update, body, footer) ->
  content = ''
  content ..= get_head title, style
  if filename != "docs/index.html"
    content ..= "<div align='center'><h1>#{title}</h1>"
    content ..= "<div class='title-date'>"
    content ..= "<small><i>published on: #{date}</i></small><br>" if date
    content ..= "<small><i>last updated on: #{update}</i></small>" if update
    content ..= "<br><br></div></div>"
  content ..= body
  content ..= footer
  file = io.open filename, "w"
  file\write content
  file\close!

-- Build main page
body, title, date, update = convert_markdown "index.md"
build_page "docs/index.html", title, nil, date, update, body, "<br><br>"

-- Build blog pages
files = {}
for log in io.popen("dir blog /b")\lines!
  body, title, date, update = convert_markdown "blog/#{log}"
  table.insert files, {:log, :body, :title, :date, :update}
for i = #files, 1, -1
  log = files[i]
  footer = ''
  footer ..= get_next_prev i, files
  footer ..= get_social!
  footer ..= "<br>"
  footer ..= get_comments!
  footer ..= "<br><br>"
  build_page "docs/blog/#{log.log\sub(1, log.log\find'%.'-1)}.html", log.title, nil, log.date, log.update, log.body, footer

-- Build devlog pages
style = [[
  ul {
    list-style: none;
    padding: 0.25em 0 0.25em 1em;
  }

  ul li {
    line-height: 1.7;
  }

  ul li:after {
    text-decoration: line-through;
  }

  ul li:before {
    content: '✓';
    padding-right: 0.2em;
  }

  h1 {
    padding-top: 2em;
  }
]]
files = {}
for log in io.popen("dir devlog /b")\lines!
  body, title = convert_markdown "devlog/#{log}"
  table.insert files, {:log, :body, :title}
for i = #files, 1, -1
  log = files[i]
  footer = get_next_prev i, files
  footer ..= "<br><br>"
  build_page "docs/devlog/#{log.title}.html", log.title, style, nil, nil, log.body, footer
