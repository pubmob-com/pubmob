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
---
<div class="container">
	<div class="row">
		<div class="heading-title text-center">
			<h3>Our pub owners.</h3>
			<p class="p-top half-txt">Each of our pubs is owned by a tender with extensive experience in helping development teams deliver high-quality software.
      </p>
		</div>
<!-- 
  It might make sense for the team hover to be shrunk down so that it does *not*
  cover the pub name that now appears about the photo.

  With that change, the pub name itself can disappear from the team -hover div.
-->
		{% assign sorted = site.pubs | sort: "sort-name" %}
		{% for pub in sorted %}
      <div class="col-md-4 col-sm-4">
        <div class="team-member">
          <div class="team-img">
            <a href="/pubs/{{ pub.tender-id }}">
              <span class="team-title">{{ pub.pub-name }}</span>
		        </a>
            <a href="/pubs/{{ pub.tender-id }}">
              <img src="/assets/images/pubs/{{ pub.tender-id }}.{{ pub.tender-photo-extension }}" width="500" height="500" alt="team member" class="img-responsive">
		        </a>
          </div>
          <div class="team-hover">
            <div class="desk">
              <a href="/pubs/{{ pub.tender-id }}">
                <h4>{{ pub.pub-name }}</h4>
                <p>{{ pub.tagline }}</p>
              </a>
            </div>
            <div class="s-link">
              <a href="#"><i class="fa fa-facebook"></i></a>
              <a href="#"><i class="fa fa-twitter"></i></a>
              <a href="#"><i class="fa fa-google-plus"></i></a>
            </div>
          </div>
        </div>
        <div class="team-title">
          <a href="/pubs/{{ pub.tender-id }}"><h5>{{ pub.owner-name }}</h5></a>
        </div>
        <div class="team-summary">
          <span>{{ pub.pub-summary-twenty-words | truncatewords: 20 }}</span>
        </div>
  		</div>
 	  {% endfor %}
  </div>
</div>			
