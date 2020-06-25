---
layout: default
pagename: home
title: PubMob
description: >
  PubMob is awesome
keywords:
  Jeff Langr,
  PubMob,
  software development,
  software development author,
  software development courses,
  outsourced software development,
  effective remote teams,
  distributed teams,
  software development team,
  software team building,
  geographically distributed team coaching,
pre-content: >
    <div class="grid">
      <div class="content">
        <picture>
          <source srcset='/assets/images/home/masthead-taps.jpg' media='(max-width: 1080px)'>
          <source srcset='/assets/images/home/masthead-taps.jpg' media='(min-width: 960px)'>
          <source srcset='/assets/images/home/masthead-taps.jpg' media='(min-width: 830px'>
          <img src='/assets/images/home/masthead-taps.jpg' alt='PubMob'>
        </picture>
      </div>
    </div>
post-content: >
---
<section class="seo">
  <div class="heading-title text-center">
    <h3>Virtual collaborative coding.</h3>
  </div>
  <p>
    Welcome to a new world of programming. Join the PubMob experience and tap
    into the expertise of a productive worldwide community of software developers. 
    Be part of a safe, enjoyable, and rewarding virtual collaborative coding experience!
  </p>
  <p>
  PubMob provides you with hands-on opportunities to learn by doing, and to do
   by collaborating online. Join a virtual PubMob session run by an experienced
   "tender" who will guide you and up to five other developers.
  </p>
  <p>
    Your tender is one of a number of <a href="/pubs">virtual PubMob pub owners</a> who will be providing short sessions focused on either helping you learn new technologies & techniques, or on helping you build something. Come see what <a href="/offerings">we have on tap</a>!
  </p>
</section>

<section class="services">
  <div class="boxleft IrishFlagGreen">
    <div class="image">
      <img src='/assets/images/home/pubmob.jpg' alt='PubMob'>
    </div>
    <div class="boxcopy copy">
      <h5>PubMob</h5>
      <p>Join a mob! Learn new techniques and technologies from pub tenders who know how to serve up their craft--from coding to testing to actual brewing. Experience the boisterous but safe feeling of a mob--the best way to build software as a team--without having to wear a mask.
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
      <img src='/assets/images/home/mobbing.jpg' alt='Why Mobbing'>
    </div>
    <div class="boxcopy copy">
      <h5>Why Mobbing?</h5>
      <p>
         Remote work is challenging. You've been isolated from teammates for months. You crave social interaction.
      </p>
      <p>
        You need to build high quality products and deliver them in a timely fashion. 
        You want to love what you do.
      </p>
      <p>Build on the strengths of others. Build a real team. Relish the experience.
         <a class="more" href="/mobbing">More &raquo;</a>
      </p>
    </div>
  </div>
  <div class="boxleft Blackish">
    <div class="boxcopy copy">
      <h5>What to Expect / How to Get Ready</h5>
      <p>
        To make the most out of your PubMob experience, you'll want to ensure you're ready
        to hit the ground running.
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


