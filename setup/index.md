---
layout: default
pagename: setup
title: PubMob | What to Expect
description: what a mob session looks like
keywords:
pre-content: >
    <div class="grid">
      <div class="content">
        <picture>
          <source srcset='/assets/images/services/langr-software-solutions-colorado-springs-colorado-services.jpg' media='(max-width: 1080px)'>
          <source srcset='/assets/images/services/langr-software-solutions-colorado-springs-colorado-services.jpg' media='(min-width: 960px)'>
          <source srcset='/assets/images/services/langr-software-solutions-colorado-springs-colorado-services.jpg' media='(min-width: 830px'>
          <img src='/assets/images/services/langr-software-solutions-colorado-springs-colorado-services.jpg' alt='PubMob what to expect'>
        </picture>
      </div>
    </div>
post-content: >
    <div class="grid">
      <div class="content">
        <picture>
          <source srcset='/assets/images/services/langr-software-solutions-services.png' media='(max-width: 1080px)'>
          <source srcset='/assets/images/services/langr-software-solutions-services.png' media='(min-width: 960px)'>
          <source srcset='/assets/images/services/langr-software-solutions-services.png' media='(min-width: 830px'>
          <img src='/assets/images/services/langr-software-solutions-services.png' alt='PubMob what to expect'>
        </picture>
      </div>
    </div>
backsite: javascript:history.back()
---
<div class="horizontal-rule">
  <div class="lr"></div>
  <h1>What to Expect</h1>
  <div class="lr"></div>
</div>

<section class="seo">
  <p>
  </p>
  <p>
  </p>
</section>

<section class="boxes">
  <div class="box LightBlue">
    <div class="header">
      <h2>How Does It Work?</h2>
    </div>
    <p>You can get a quick notion of what an actual PubMob session looks like by
      watching a few minutes of this <a href="">short video</a>. You'll see 
      how the mob rotations work. For a sample 3-minute driver session, the 
      next developer in turn:</p>
      <ul class="list">
        <li class="outer"><p>shares their screen</p></li>
        <li class="outer"><p>issues the <code>mob start 3</code> command</p></li>
        <li class="outer"><p>listens for direction from the mob</p></li>
        <li class="outer"><p>builds code to suport the mob's direction</p></li>
        <li class="outer"><p>issues the <code>mob next</code> command, which passes
          the driver role to the next developer in turn</p></li>
      </ul>
    <p>The <code>mob start</code> command grabs the latest in-progress code
      and checks out a work-in-progress (WIP) branch named mob-session.
     The <code>mob next</code> command commits the current changes (it can
      be in any state, maybe not even compiling) and pushes the WIP branch.</p>
    <p>When the mob is ready to create a commit representing a piece of "done" work,
      the current driver issues the <code>mob done</code> instead of the
      <code>mob next</code> command. As a result, the mob tool squashes all
      of the many WIP commits and stages the resulting changes on the master
      branch. The team reviews what's staged and creates a commit. The mob
      tool removes the WIP branch as a final step.</p>
  </div>
  <div class="box LightGreen">
    <div class="header">
      <h2>What Does It Feel Like?</h2>
    </div>
    <p>Being a driver may sound intimidating at first, but a key element of 
      mobbing is to minimize the fear factor. When you're in the "hot seat" as a driver
      (typically for a breezy 3-5 minutes),
      you're not expected to have all the answers. In fact, you're not expected to
      have <em>any</em> answers&mdash;your job is to listen and translate.</p>
    <p>You can't quite sit back and relax; it turns out that listening and translating
     is a valuable skill all its own. But it does mean that you should never feel
      pressured or intimidated because you don't have the answers.</p>
    <p>The feedback we usually hear: Mobbing is fun, it's productive,
      and it goes by fast. [[some real quotes here ]]</p>
  </div>
  <div class="box LightYellow">
    <div class="header">
      <h2>How Do I Get Ready?</h2>
    </div>
    <p>Most sessions will use the <a href="http://github.com/remotemobprogramming/mob">mob</a> tool. Follow the instructions on the mob page to install the tool; it should take a couple minutes. For MacOS users, it's a single <code>brew install</code> command.</p>
    <p>
      Each pub tender will have custom setup instructions for their mob session.
      Most of the time, this will involve cloning a repository and making sure
      it builds successfully.</p>
    <p>In order to get the maximum value out of your session, make sure that you're
    able to build the session's software, and run any tests, before joining the session.
    Participants who aren't ready will be asked to fall back to remote control,
    which is a lot less fun.</p>

<p>TODO: WHERE does the git push ability get added? It would be great to automate this somehow when people sign up. There's probably a way via the GitHub API.</p>

  <p>
  Read <a href="/mobbing">more about mobbing and why we use it</a>.
  </p>
  </div>
  
</section>

