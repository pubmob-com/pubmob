---
layout: back
pagename: setup
title: PubMob | What to Expect | Remote Control With AnyDesk
description: what a mob session looks like using remote control and AnyDesk
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
<h1>What to expect: Remote control with AnyDesk</h1>

<div>
  <h2>Remote control</h2>
  <p>During a PubMob session using remote control, you'll have minimal setup and almost nothing will be happening on your machine. Instead, the {{ site.session-lead-term }} will provide a hosted solution that you connect to. Your {{ site.session-lead-term }} will provide you with all the information you need about how to enter information, build, and run tests. <!-- <img src="/assets/images/setup/" class="setupImg"/> --></p>

  <h2>How does remote control work?</h2>
  <p>it just does</p>
</div>

<div>
  <h2>How do I get ready?</h2>
  <em>nothing? almost nothing? is there a way to test the connection first?</em>
  <p>Participants who have connection issues to the remote machine will be asked to <a href="#fallback-rule">fall back</a> to remotely-controlling the machine of your {{ site.session-lead-term }} using Zoom remote control. As a result, you'll probably experience a little bit of lag when you type.</p> 

  <h2><a id="fallback-rule"></a>One-chance setup / fallback rule</h2><!-- TODO anchor tag here -->
  <p>The first time you drive, you'll be asked to try typing remotely onto the AnyDesk host. Occasionally there are connectivity or keyboard issues with doing so. If at first you're unsuccessful, your {{ site.session-lead-term }} will attempt to help you resolve the problem. If you're unsuccessful, you'll be asked to type onto the {{ site.session-lead-term }}'s machine using Zoom's remote control capability for the remainder of the session.</p>

  <h2>Tradeoffs for remote control with AnyDesk</h2>
  <p>Benefits:</p>
  <ul class="list outer">
    <li><p>Virtually no setup or installation required</p></li>
    <li><p>Rapid handovers.</p></li>
    <li><p>Puts the burden on the host to worry about build, test, and configuration issues.</p></li>
    <li><p>The experience looks the same to everyone for the entire session.</p></li>
  </ul>
  <p>Costs:</p>
  <ul class="list outer">
    <li><p>Some mild lag potential while typing.</p></li>
    <li><p>Spotty internet connection can cause disconnects.</p></li>
    <li><p>Potential keyboard mismatch issues.</p></li>
    <li><p>Potentially unfamiliar IDE / key mapping experience.</p></li>
  </ul>
  <p>Remote control with AnyDesk is ideal for the short sessions that PubMob offers, putting all the burden for session preparation on your {{ site.sesson-lead-term }}. You might be giving up your comfortable development environment for a short while, but you'll be hands-on immediately with minimal worries.</p>
</div>

