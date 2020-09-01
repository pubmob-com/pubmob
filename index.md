---
layout: default
pagename: home
title: PubMob
description: >
  PubMob is awesome
keywords:
  PubMob,
  mob programming,
  ensemble programming,
  mobbing,
  collaborative development,
  collaboration,
  virtual,
  virtual software development,
  distributed,
  software development,
  software development author,
  software development courses,
  outsourced software development,
  effective remote teams,
  Jeff Langr,
pre-content: >
    <div class="grid">
      <div class="content">
        <picture>
          <source srcset='/assets/images/home/video-chat.jpg' media='(max-width: 1080px)'>
          <source srcset='/assets/images/home/video-chat.jpg' media='(min-width: 960px)'>
          <source srcset='/assets/images/home/video-chat.jpg' media='(min-width: 830px'>
          <img src='/assets/images/home/video-chat.jpg' alt='PubMob'>
        </picture>
      </div>
    </div>
post-content: >
---
<section class="seo">
  <h1>Virtual collaborative coding.</h1>
  <p>
    Welcome to a new world for software development. Join the PubMob experience and tap
    into the expertise of a productive worldwide community of software developers. 
    Be part of a safe, enjoyable, and rewarding virtual collaborative development experience!
  </p>
  <p>
  PubMob provides you with hands-on opportunities to learn by doing, and to do
   by collaborating online. Join a virtual PubMob session run by an experienced
   {{ site.session-lead-term}} who will guide you and up to five other developers.
  </p>
  <p>
    Your {{ site.session-lead-term }} is one of a number of <a href="/pubs">virtual PubMob pub owners</a> who will be providing short sessions focused on either helping you learn new technologies & techniques, or on helping you build something. Come see what <a href="/offerings">we have on tap</a>!
  </p>
</section>

<section class="services">
  <div class="boxleft IrishFlagGreen">
    <div class="image">
      <img src='/assets/images/home/pubmob.jpg' alt='PubMob'>
    </div>
    <div class="boxcopy copy">
      <h5>PubMob</h5>
      <p>Join a mob! Learn new techniques and technologies from pub {{ site.session-lead-term-plural }} who know how to serve up their craft--from coding to testing to actual brewing. Experience the boisterous but safe feeling of a mob--the best way to build software as a team--without having to wear a mask.
         <a class="more" href="/pubmob">More &raquo;</a>
      </p>
    </div>
  </div>
  <div class="boxleft IrishFlagOrange">
    <div class="boxcopy copy">
      <h5>PubMob Private</h5>
      <p>Your team wants to get unblocked so they can deliver. Give them the gift of Private PubMob, where they can focus on the challenge at hand as a team. They will appreciate being to reach for training, coaching, debugging, or help with building their code--just in time to help meet the challenge.
         <a class="more" href="/pubmobPrivate">More &raquo;</a>
      </p>
    </div>
    <div class="image">
      <img src='/assets/images/home/private.jpg' alt='PubMob Private'>
    </div>
  </div>
  <div class="boxleft Reddish">
    <div class="image">
      <img src='/assets/images/home/mobprogramming.jpg' alt='Why Mob Programming'>
    </div>
    <div class="boxcopy copy">
      <h5>Why Mob Programming?</h5>
      <p>
         Remote work is challenging. You've been isolated from teammates for months. You crave social interaction.
      </p>
      <p>
        You need to build high quality products and deliver them in a timely fashion. 
        You want to love what you do.
      </p>
      <p>Build on the strengths of others. Build a real team. Relish the experience.
         <a class="more" href="/mobprogramming">More &raquo;</a>
      </p>
    </div>
  </div>
  <div class="boxleft Blackish">
    <div class="boxcopy copy">
      <h5>What to Expect / How to Get Ready</h5>
      <p>
        To make the most out of your PubMob session, you'll want to ensure you're ready
        to hit the ground running. That means getting your machine set up for the session,
        if needed, and understanding what the PubMob experience is like.
      </p>
      <p>
        Our instructors will be using one of a few simple remote programming techniques to 
        allow you to easily participate in the session. Take a moment to read about setting up for PubMob and what to expect.
        <a class="more" href="/setup">More &raquo;</a>
      </p>
    </div>
    <div class="image">
      <img src='/assets/images/home/outsourced-software-development.jpg' alt='Outsourced software development'>
    </div>
  </div>
</section>

<div class="two">
  <div class="announcements">
    <h5>Announcements</h5>
    <div class="indent">
      {% capture now %}{{'now' | date: '%s' | plus: 0 }}{% endcapture %}
      {% assign announcements = site.announcements %}
      {% assign count = 0 %}
      {% for announcement in announcements %}
        {% capture expireDate %}{{ announcement.expire | date: '%s' | plus: 0 }}{% endcapture %}
        {% if now <= expireDate %}
          {{ announcement.content | markdownify }} <em>(posted {{ announcement.date | date: "%b %d, %Y" }})</em>
          {% assign count = count | plus: 1 %}
          {% if count == 3 %}
            {% break %}
          {% endif %}
        {% endif %}
      {% endfor %}
    </div>
  </div>
</div>


