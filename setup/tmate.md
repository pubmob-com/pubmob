---
layout: back
pagename: setup
title: PubMob | What to Expect | tmate
description: what a mob session looks like using tmate
keywords:
pre-content: >
    <div class="grid">
      <div class="content">
        <picture>
          <source srcset='/assets/images/mastheads/masthead-laptop-mob3.jpg' media='(max-width: 1080px)'>
          <source srcset='/assets/images/mastheads/masthead-laptop-mob3.jpg' media='(min-width: 960px)'>
          <source srcset='/assets/images/mastheads/masthead-laptop-mob3.jpg' media='(min-width: 830px'>
          <img src='/assets/images/mastheads/masthead-laptop-mob3.jpg' alt='PubMob what to expect'>
        </picture>
      </div>
    </div>
post-content: >
    <div class="grid">
      <div class="content">
        <picture>
          <source srcset='/assets/images/mastheads/masthead-laptop-mob3.jpg' media='(max-width: 1080px)'>
          <source srcset='/assets/images/mastheads/masthead-laptop-mob3.jpg' media='(min-width: 960px)'>
          <source srcset='/assets/images/mastheads/masthead-laptop-mob3.jpg' media='(min-width: 830px'>
          <img src='/assets/images/mastheads/masthead-laptop-mob3.jpg' alt='PubMob what to expect'>
        </picture>
      </div>
    </div>
backsite: "javascript:history.back()"
---
<h1>What to expect: tmate</h1>

<div>
  <h2>tmate</h2>
  <p><a href="https://tmate.io">tmate</a> is a fork of tmux designed for efficient terminal sharing.</p>

  <h2>How does tmate work?</h2>
  <p>Besides Zoom for face and voice, participants need only SSH or a web browser.</p>
</div>

<div>
  <h2>How do I get ready?</h2>
  <p>There's nothing to set up. At the start of the session, your {{ site.session-lead-term }} will provide an SSH command and a web hyperlink, either of which will join you to the shared terminal.</p>

  <h2>What about when it's my turn?</h2>
  <p>tmate sessions are read-write. When it's your turn, the previous driver will stop typing and you'll start.</p>

  <h2><a id="fallback-rule"></a>Fallback rule</h2>
  <p>Generally there's little that can go wrong with tmate. In the unlikely event you encounter a problem, your {{ site.session-lead-term }} will attempt to help you resolve it. If you're unsuccessful, you'll be asked to type onto the {{ site.session-lead-term }}'s machine using Zoom's remote control capability for the remainder of the session.</p>

  <h2>Trade-offs for tmate</h2>
  <p>Benefits:</p>
  <ul class="list outer">
    <li><p>Virtually no setup or installation required.</p></li>
    <li><p>The full power of Unix.</p></li>
    <li><p>Rapid handovers.</p></li>
    <li><p>Puts the burden on the host to worry about build, test, and configuration issues.</p></li>
    <li><p>The experience looks the same to everyone for the entire session.</p></li>
  </ul>
  <p>Costs:</p>
  <ul class="list outer">
    <li><p>Nothing fancy (unless you fancy <tt>vim</tt>).</p></li>
  </ul>
  <p>tmate is ideal for the short sessions that PubMob offers, putting all the burden for session preparation on your {{ site.session-lead-term }}. It's also great for work in languages such as C or C++, where getting everyone to build the software on their machine might be asking too much. You might be giving up your comfortable development environment for a short while, but you'll be hands-on immediately with minimal worries.</p>
</div>

