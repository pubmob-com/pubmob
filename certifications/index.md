---
layout: back
pagename: certifications
title: PubMob | Certifications, Badges, and Such
description: Check off a number of sessions and earn certifications + prizes
keywords:
pre-content: >
    <div class="grid">
      <div class="content">
        <picture>
          <source srcset='/assets/images/pubs/pub-entrance.jpg' media='(max-width: 1080px)'>
          <source srcset='/assets/images/pubs/pub-entrance.jpg' media='(min-width: 960px)'>
          <source srcset='/assets/images/pubs/pub-entrance.jpg' media='(min-width: 830px'>
          <img src='/assets/images/pubs/pub-entrance.jpg' alt='About PubMob'>
        </picture>
      </div>
    </div>
post-content: >
title-bar-color: title-bar-light-green
title-bar-text: PubMob | Certifications, Badges, and Such
backsite: "javascript:history.back()"
---
<h1>Certifications, Badges, and Such</h1>
<p>Check out the following opportunities to earn PubMob certifications and prizes.</p>
<div>
  {% for cert in site.certifications %}
  <div class="indent">
    <h2>{{ cert.title }}</h2>
    <p>{{ cert.description }}</p>
    <p>Sessions required:</p>
      <ul class="list">
      {% for offering in cert.offerings %}
        {% assign expected-id = "/offerings/" | append: offering %}
        {% assign source-offering = site.offerings | where: "id", expected-id | first %}
        <li class="outer"><a href="{{ expected-id }}">{{ source-offering.name }}</a></li>
      {% endfor %}
      </ul>
    <p>Reward: {{ cert.reward }}</p>
    <hr />
  </div>
  {% endfor %}
  <p>
    PubMob will track your session attendance. Contact us when you've attended enough sessions to receive a certification or reward.
  </p>
  <p>
    More rewards and certifications coming soon!
  </p>
  
</div>
