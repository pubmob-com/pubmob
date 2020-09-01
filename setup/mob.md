---
layout: back
pagename: setup
title: PubMob | What to Expect | Mob
description: what a mob session looks like
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
<h1>What to expect: Git handover using mob</h1>

<div>
  <h2>Git handover</h2>
  <p>When using Git handover, the current driver shares their screen and works entirely on their own machine. After their driving time is up, the driver quickly pushes up code changes to a temporary branch. The next driver in turn shares their screen and pulls the in-progress code from the temporary branch. This transition from one driver to the next is known as a <em>handover</em>.<img src="/assets/images/setup/mob_logo.svg" class="setupImg"/></p>
  <p>For PubMob sessions, we use the tool <a href="https://github.com/remotemobprogramming/mob">mob</a> to reduce transitions to a single command.</p>

  <h2>How does Git handover work?</h2>
  <p>For a sample driver session (let's say for three minutes), the next developer in turn:</p>
  <ul class="list">
    <li><p>shares their screen</p></li>
    <li><p>issues the <code>mob start 3</code></p></li>
    <li><p>listens for direction from the mob</p></li>
    <li><p>builds code to suport the mob's direction</p></li>
    <li><p>issues the <code>mob next</code> command, which passes the driver role to the next developer in turn</p></li>
  </ul>
  <p>The <code>mob start</code> command checks out a work-in-progress (WIP) branch named mob-session, creating it if necessary. The <code>mob next</code> command commits the current changes and pushes the WIP branch. The code can be in any state when <code>mob next</code> is executed; it might not even be compiling.</p>
  <p>When the mob is ready to create a commit representing a piece of "done" work, the current driver issues the <code>mob done</code> instead of the <code>mob next</code> command. When <code>mob done</code> is executed, the mob tool squashes all of the many WIP commits and stages the resulting changes on the master branch, then removes the WIP branch as a cleanup step. The team can review what's staged and create a commit as appropriate.</p>
</div>

<div>
  <h2>How do I get ready?</h2>
  <p>When using the <em>mob</em> tool, you have the advantage of working on your own machine, but you'll need to spend a few minutes setting things up.</p>
  <ul class="list outer">
    <li><p>You'll need to install the <em>mob</em> tool, using the instructions on its <a href="http://github.com/remotemobprogramming/mob">GitHub</a> page. It's a one-command install on the Mac, Windows, or Linux. If you are on Windows, run the installation script in a Git Bash window. For MacOS users, it's a single <code>brew install</code> command.</p></li>
    <li><p>You'll need to clone the session's repository and ensure you can build / run tests.</p></li>
    <li><p>Check the listing for the PubMob session you are joining to see if there is any additional setup information.</p></li>
    <li><p>You may also need to provide a GitHub or other repository host login ID to the {{ site.session-lead-term }}.</p></li>
  </ul>
  <p>Participants who aren't ready will be asked to <a href="#fallback-rule">fall back to remotely-controlling the machine of your {{ site.session-lead-term }}</a>, which is a lot less fun.</p> 

  <!-- TODO easy way to add people to a repo? Automatable? -->

  <h2><a id="fallback-rule"></a>One-chance setup / fallback rule</h2><!-- TODO anchor tag here -->
  <p>When a PubMob session starts, you should be ready to code. The first time you drive, you'll be asked to do a <code>mob start 5</code>, compile and run tests, make a small change, then do a <code>mob next</code>. If any of these steps fail, your {{ site.session-lead-term }} and the other PubMobbers will attempt to help you finish setting up. If you're unsuccessful, you'll be asked to remotely control the {{ site.session-lead-term }}'s machine for the remainder of the session.</p>
  <p>If you have challenges setting up, don't hesitate to solicit help from the {{ site.session-lead-term }} before the session begins!</p>
  <p>Certain introductory PubMob sessions will set aside time during the session to help everyone get setup up. Look for these if it's your first visit to a PubMob!</p>

  <h2>Tradeoffs for Git handover</h2>
  <p>Benefits:</p>
  <ul class="list outer">
    <li><p>Ability to work in your own preferred IDE under your own OS.</p></li>
    <li><p>Ability to use your own keyboard configuration / plugin.</p></li>
    <li><p>Rapid handovers.</p></li>
    <li><p>No lag while typing.</p></li>
    <li><p>Spotty internet connection does not deteriorate your abililty to type.</p></li>
    <li><p>No keyboard mismatch issues across the wire.</p></li>
  </ul>
  <p>Costs:</p>
  <ul class="list outer">
    <li><p>Requires mob tool installation.</p></li>
    <li><p>Requires that you can build and run tests locally.</p></li>
    <li><p>Requires push access to the Git repository used.</p></li>
    <li><p>Occasional need to fix Git out-of-sync problems when protocol not followed.</p></li>
    <li><p>Potential dissonance for observers when multiple IDEs / layouts / colors used.</p></li>
    <li><p>Handovers can require a few additional seconds to restore any closed files. (This can be overcome by configuring mob to remain on the WIP branch after a handover.)</p></li>
  </ul>
  <p>Git handover with the mob tool is usually ideal for an established and remote development team whose members would already have met the build and Git requirements.</p>
  <p>For PubMob use, the costs can represent a significant impact to a session if attendees are not properly prepared.</p>
  <p><b>To prevent unprepared attendees from taking valuable time from a session, we employ a <a href="#fallback-rule">one-chance setup / fallback rule</a>.</b></p>
</div>
  <!-- Read <a href="/mobprogramming">more about mob programming and why we use it</a>.
      You can get a quick notion of what an actual PubMob session looks like by watching a few minutes of this <a href="">short video</a>. -->

