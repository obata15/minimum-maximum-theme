<html>

<head>
  <meta charset="utf-8" />

  <meta name="text:Font Family" content="sans-serif" />
  <meta name="text:Paragraph Line Height In Article" content="1.5" />
  <meta name="if:Show Thumbnails" content="0" />
  <meta name="if:Hide Thumblr Menu And Popup" content="0" />
  <meta name="text:Google Site Verification ID" content="" />
  <meta name="text:Google Tag Manager ID" content="" />

  {block:IfGoogleTagManagerID}
    <!-- Google tag (gtag.js) -->
    <script async src="https://www.googletagmanager.com/gtag/js?id={text:Google Tag Manager ID}"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

      gtag('config', '{text:Google Tag Manager ID}');
    </script>
  {/block:IfGoogleTagManagerID}

  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="theme-color" content="{AccentColor}" />
  {block:IfGoogleSiteVerificationID}
    <meta name="google-site-verification" content="{text:Google Site Verification ID}" />
  {/block:IfGoogleSiteVerificationID}

  <link rel="shortcut icon" href="{Favicon}" />
  <link rel="alternate" type="application/rss+xml" href="{RSS}" />
  <link rel="apple-touch-icon-precomposed" href="{PortraitURL-128}" />
  <link href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css" rel="stylesheet" />

  <title>
    {block:TagPage}
      "{Tag}" |
    {/block:TagPage}
    {block:PermalinkPage}
      {block:PostSummary}
        {PostSummary}
      {/block:PostSummary}
      |
    {/block:PermalinkPage}
    {Title}
  </title>

  <meta name="description" content="{MetaDescription}" />

  <style>
    body {
      background: {BackgroundColor};
      color: {TitleColor};
      font-family: {text:Font Family};
    }

    a {
      color: {AccentColor};
      text-decoration: none;
    }

    a:visited {
      color: #777777;
    }

    a:hover {
      color: {AccentColor};
    }

    a.accent-color {
      color: {AccentColor};
    }

    a.title-color {
      color: {TitleColor};
    }

    a.visited-opacity:visited {
      color: #777777;
    }

    .opacity {
      opacity: 0.4;
    }

    @media (prefers-color-scheme: dark) {
      body {
        background: {TitleColor};
        color: {BackgroundColor};
      }

      a.title-color:not(.base-brightness),
      a.accent-color:not(.base-brightness),
      article section>:not(div) a {
        filter: brightness(150%);
      }

      a.title-color {
        color: {BackgroundColor};
      }
    }

    .text-center {
      text-align: center;
    }

    .align-bottom {
      vertical-align: bottom;
    }

    .p-0 {
      padding: 0;
    }

    .px-4 {
      padding-right: 1rem;
      padding-left: 1rem;
    }

    .py-6 {
      padding-top: 1.5rem;
      padding-bottom: 1.5rem;
    }

    .m-0 {
      margin: 0;
    }

    .my-1 {
      margin-top: 0.25rem;
      margin-bottom: 0.25rem;
    }

    .my-2 {
      margin-top: 0.5rem;
      margin-bottom: 0.5rem;
    }

    .my-3 {
      margin-top: 0.75rem;
      margin-bottom: 0.75rem;
    }

    .my-4 {
      margin-top: 1rem;
      margin-bottom: 1rem;
    }

    .my-5 {
      margin-top: 1.25rem;
      margin-bottom: 1.25rem;
    }

    .my-6 {
      margin-top: 1.5rem;
      margin-bottom: 1.5rem;
    }

    .my-8 {
      margin-top: 2rem;
      margin-bottom: 2rem;
    }

    .mt-2 {
      margin-top: 0.5rem;
    }

    .list-none {
      list-style-type: none;
    }

    .text-bold {
      font-weight: bold;
    }

    .text-sm {
      font-size: 0.875rem;
    }

    .text-xl {
      font-size: 1.25rem;
    }

    .text-2xl {
      font-size: 1.5rem;
    }

    .text-3xl {
      font-size: 1.875rem;
    }

    .text-4xl {
      font-size: 2.25rem;
    }

    .block {
      display: block;
    }

    .inline-block {
      display: inline-block;
    }

    .text-lg {
      font-size: 1.125rem;
    }

    .leading-xl {
      line-height: 1.75rem;
    }

    .leading-3xl {
      line-height: 2.25rem;
    }

    .leading-4xl {
      line-height: 2.5rem;
    }

    .leading-trim-xl {
      margin-top: -0.125rem;
      margin-bottom: -0.125rem;
    }

    .leading-trim-3xl {
      margin-top: -0.1875rem;
      margin-bottom: -0.1875rem;
    }

    .rounded-full {
      border-radius: 9999px;
    }

    .fill-empty:empty::after,
    .fill-empty span:empty::after {
      content: "∅";
    }

    .body {
      margin: auto;
      padding-right: 1rem;
      padding-left: 1rem;
      max-width: 45rem;
      line-height: 1;
    }

    .ui {
      font-weight: 500;
      font-family: "Segoe UI", Roboto, sans-serif;
    }

    .flex-list {
      margin-top: 1rem;
      margin-bottom: 1rem;
      padding: 0;
      list-style-type: none;
      display: flex;
      gap: 1rem;
      align-items: center;
    }

    .flex-nav-list {
      margin-top: 1rem;
      margin-bottom: 1rem;
      padding: 0;
      list-style-type: none;
      display: flex;
      gap: 1rem;
      justify-content: center;
      align-items: baseline;
    }

    .index-post-list {
      padding: 0;
      list-style-type: none;
      display: flex;
      flex-direction: column;
      gap: 1rem;
    }

    article p {
      line-height: 1.75rem;
    }

    .like_button iframe {
      vertical-align: bottom;
    }
  </style>
</head>

<body class="body">
  {block:ifHideThumblrMenuAndPopup}
    <script>
      const mutationObserver = new MutationObserver((mutations) => {
        mutations.forEach((mutation) => {
          elements = document.getElementsByClassName("tmblr-iframe");
          while (elements.length) {
            elements.item(0).remove()
          }
        });
      });

      mutationObserver.observe(
        document.body, { childList: true, subtree: true }
      );
    </script>
  {/block:ifHideThumblrMenuAndPopup}

  <header class="text-center">
    {block:ShowAvatar}
      <div class="my-3 block">
        <a href="/">
          <img src="{PortraitURL-128}" alt="{URLEncodedName}" class="align-bottom rounded-full" width="96" height="96" />
        </a>
      </div>
    {/block:ShowAvatar}
    {block:ShowTitle}
      <{block:IndexPage}h1{/block:IndexPage}{block:PermalinkPage}div{/block:PermalinkPage}
        class="my-2 text-2xl text-bold">
        <a href="/" class="title-color">
          {Title}
        </a>
      </{block:IndexPage}h1{/block:IndexPage}{block:PermalinkPage}div{/block:PermalinkPage}>
    {/block:ShowTitle}
    {block:ShowDescription}
      <p class="my-1 opacity">
        {Description}
      </p>
    {/block:ShowDescription}
  </header>
  <nav class="my-4 text-center text-lg ui">
    <ul class="flex-nav-list">
      <li>
        <a href="/" class="accent-color">Home</a>
      </li>
      {block:HasPages}
        {block:Pages}
          <li>
            <a href="{URL}" class="accent-color">{Label}</a>
          </li>
        {/block:Pages}
      {/block:HasPages}
      <li>
        <a href="/archive" class="accent-color">Archive</a>
      </li>
    </ul>
  </nav>

  {block:IndexPage}
    <main class="my-8">
      {block:TagPage}
        <h2>"{Tag}"</h2>
      {/block:TagPage}
      <ol class="index-post-list">
        {block:Posts}
          <li>
            <p class="m-0 text-bold text-xl leading-xl leading-trim-xl">
              {block:Text}
                <a href="{Permalink}" class="title-color visited-opacity fill-empty">{Title}</a>
              {/block:Text}
              {block:Photo}
                [WARNING] Photo post is not supported.
              {/block:Photo}
              {block:Panorama}
                [WARNING] Panorama post is not supported.
              {/block:Panorama}
              {block:Photoset}
                [WARNING] Photoset post is not supported.
              {/block:Photoset}
              {block:Quote}
                [WARNING] Quote post is not supported.
              {/block:Quote}
              {block:Link}
                [WARNING] Link post is not supported.
              {/block:Link}
              {block:Chat}
                [WARNING] Chat post is not supported.
              {/block:Chat}
              {block:Video}
                [WARNING] Video post is not supported.
              {/block:Video}
              {block:Audio}
                [WARNING] Audio post is not supported.
              {/block:Audio}
            </p>
            <a href="{Permalink}" class="mt-2 inline-block title-color opacity">
              {Year}-{MonthNumberWithZero}-{DayOfMonthWithZero}
            </a>
          </li>
        {/block:Posts}
      </ol>
      {block:Pagination}
        <nav class="my-6 text-center text-2xl ui">
          <ul class="flex-nav-list">
            {block:PreviousPage}
              <li><a href="{PreviousPage}" class="accent-color">&lsaquo;</a></li>
            {/block:PreviousPage}
            {block:JumpPagination length="5"}
              {block:CurrentPage}
                <li><span>{PageNumber}</span></li>
              {/block:CurrentPage}
              {block:JumpPage}
                <li><a href="{URL}" class="accent-color">{PageNumber}</a></li>
              {/block:JumpPage}
            {/block:JumpPagination}
            {block:NextPage}
              <li><a href="{NextPage}" class="accent-color">&rsaquo;</a></li>
            {/block:NextPage}
          </ul>
        </nav>
      {/block:Pagination}
    </main>
  {/block:IndexPage}

  {block:PermalinkPage}
    <main class="my-8">
      {block:Posts}
        <article>
          {block:Text}
            <h1 class="text-3xl leading-3xl leading-trim-3xl">{Title}</h1>
            <ul class="flex-list">
              {block:Date}
                <li>{Year}-{MonthNumberWithZero}-{DayOfMonthWithZero}</li>
              {/block:Date}
              {block:Tags}
                <li><a href="{TagURL}" class="accent-color">#{Tag}</a></li>
              {/block:Tags}
            </ul>
            <section class="my-4">
              {Body}
            </section>
          {/block:Text}
        </article>
        <aside>
          <ul class="flex-list">
            <li class="opacity">{NoteCountWithLabel}</li>
            <li>{LikeButton color="grey"}</li>
            <li>{ReblogButton color="grey"}</li>
          </ul>
          {PostNotes}
        </aside>
      {/block:Posts}
      <nav>
        <a href="/">
          <span>H</span><span><img src="{PortraitURL-128}" alt="O" /></span><span>ME</span>
        </a>
      </nav>
    </main>
  {/block:PermalinkPage}

  <!-- Please remove followings and edit more code! -->
  <footer class="my-4 text-center text-sm">
    <span class="opacity">Powered by</span>
    <a href="https://www.tumblr.com/" target="_blank" class="accent-color">Tumblr</a>
    <span class="opacity">and</span>
    <a href="https://github.com/obata15/minimum-maximum" target="_blank" class="accent-color">Minimum-Maximum</a>
  </footer>
</body>

</html>
