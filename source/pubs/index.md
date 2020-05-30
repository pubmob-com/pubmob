---
layout: default
pagename: pubs
title: PubMob | The Pubs
description:
  The pub marketplace.
keywords:
pre-content: >
    <div class="grid">
      <div class="content">
        <picture>
          <source srcset='/assets/images/about/langr-software-solutions-colorado-springs-colorado-about.jpg' media='(max-width: 1080px)'>
          <source srcset='/assets/images/about/langr-software-solutions-colorado-springs-colorado-about.jpg' media='(min-width: 960px)'>
          <source srcset='/assets/images/about/langr-software-solutions-colorado-springs-colorado-about.jpg' media='(min-width: 830px'>
          <img src='/assets/images/about/langr-software-solutions-colorado-springs-colorado-about.jpg' alt='About PubMob'>
        </picture>
      </div>
    </div>
post-content: >
title-bar-color: title-bar-light-green
title-bar-text: The Pubs
---
<div>
 {% assign sorted = site.tenders | sort:'sort-name' %}
 {% for pub in sorted %}
   <li>
     <h4><a href="/tenders/{{ pub.tender-id }}">{{ pub.pub-name }}</a></h4>
     <img src="/assets/images/tenders/{{ pub.tender-id }}.{{ pub.tender-photo-extension }}" style="width: 200px" />
     <p>{{ pub.tagline }}<br />
     Your tender: {{ pub.tender-name }}</p>
   </li>
 {% endfor %}
</div>
