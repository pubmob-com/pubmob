---
layout: back
pagename: pubs
title: PubMob | The Pubs
description:
  The pub marketplace.
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
title-bar-text: PubMob | The Pubs
backsite: "javascript:history.back()"
---
<div class="container">
	<div class="row">
    <h1 class="text-center">Our pub owners.</h1>
    <p>Each of our pubs is owned by a {{ site.session-lead-term }} with extensive experience in helping development teams deliver high-quality software.</p>
    <div class="pub-owners">
      {% assign sorted = site.pubs | sort: "sort-name" %}
      {% for pub in sorted %}
      <div class="team-member">
        <div class="team-img">
          <a href="/pubs/{{ pub.session-lead-id }}">
            <img src="/assets/images/pubs/{{ pub.session-lead-id }}.{{ pub.session-lead-photo-extension }}" width="500" height="500" alt="team member" class="img-responsive">
          </a>
          <div class="team-hover">
            <a href="/pubs/{{ pub.session-lead-id }}">
              <span class="team-title">{{ pub.pub-name }}</span>
            </a>
            <a href="/pubs/{{ pub.session-lead-id }}"><p>{{ pub.tagline }}</p></a>
          </div>
        </div>
        <div class="owner-name">
          <span><a href="/pubs/{{ pub.session-lead-id }}">{{ pub.owner-name }}</a></span>
        </div>
        <div class="team-summary">
          <span>{{ pub.pub-summary-twenty-words | truncatewords: 20 }}</span>
        </div>
      </div>
   	  {% endfor %}
    </div>
  </div>
</div>		
