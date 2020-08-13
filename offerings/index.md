---
layout: back
pagename: offerings
title: PubMob | What's on Tap
description:
  What we offer
keywords:
pre-content: >
    <div class="grid">
      <div class="content">
        <picture>
          <source srcset='/assets/images/offerings/masthead-taps.jpg' media='(max-width: 1080px)'>
          <source srcset='/assets/images/offerings/masthead-taps.jpg' media='(min-width: 960px)'>
          <source srcset='/assets/images/offerings/masthead-taps.jpg' media='(min-width: 830px'>
          <img src='/assets/images/offerings/masthead-taps.jpg' alt='Offerings'>
        </picture>
      </div>
    </div>
post-content: >
title-bar-color: title-bar-light-green
title-bar-text: What's on Tap
all-topics-tag: All
backsite: "javascript:history.back()"
---
<!-- <script src="/assets/javascripts/moment.js"></script> -->
<h1>Our pub mob sessions.</h1>
<p>At PubMob, you'll find a varied selection of engaging mob sessions, from hands-on coding to design workshops.</p>

{% include class-legend.html %}

{% assign offerings = site.offerings | sort: "name" %}
{% for offering in offerings %}
  {% include offering.html %}
{% endfor %}

