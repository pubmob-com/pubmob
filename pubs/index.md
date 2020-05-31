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

<div class="container">
	<div class="row">
		<div class="heading-title text-center">
			<h3 class="text-uppercase">Meet Our Pub Owners</h3>
			<p class="p-top-30 half-txt">Pub Owner Description ... </p>
		</div>
		{% assign sorted = site.tenders | sort: "sort-name" %}
		{% for pub in sorted %}
        <a href="/tenders/{{ pub.tender-id }}">
        <div class="col-md-4 col-sm-4">
        		<div class="team-member">
					<div class="team-img">
						<img src="/assets/images/tenders/{{ pub.tender-id }}.{{ pub.tender-photo-extension }}" width="500" height="500" alt="team member" class="img-responsive">
					</div>
					<div class="team-hover">
						<div class="desk">
							<h4>{{ pub.pub-name }}</h4>
							<p>{{ pub.tagline }}</p>
						</div>
						<div class="s-link">
							<a href="#"><i class="fa fa-facebook"></i></a>
							<a href="#"><i class="fa fa-twitter"></i></a>
							<a href="#"><i class="fa fa-google-plus"></i></a>
						</div>
					</div>
			</div>
			<div class="team-title">
				<a href="/tenders/{{ pub.tender-id }}"><h5>{{ pub.tender-name }}</h5></a>
				<a href="/tenders/{{ pub.tender-id }}"><span>{{ pub.pub-name }}</span></a>
			</div>
		</div>
		</a>
 	   {% endfor %}
   </div>
</div>			