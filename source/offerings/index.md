---
layout: default
pagename: offerings
title: PubMob | What's on Tap
description:
  What we offer
keywords:
pre-content: >
    <div class="grid">
      <div class="content">
        <picture>
          <source srcset='/assets/images/about/offerings.jpg' media='(max-width: 1080px)'>
          <source srcset='/assets/images/about/offerings.jpg' media='(min-width: 960px)'>
          <source srcset='/assets/images/about/offerings.jpg' media='(min-width: 830px'>
          <img src='/assets/images/about/offerings.jpg' alt='Offerings'>
        </picture>
      </div>
    </div>
post-content: >
title-bar-color: title-bar-light-green
title-bar-text: What's on Tap
---
<p>TBD: a way to filter by technology, maybe sort, maybe filter by other stuffs</p>
<div>
 {% for offering in site.offerings %}
   <li>
     <h5><a href="{{ offering.id }}">{{ offering.name }}</a></h5>
     <p>Tender: <a href="/tenders/{{offering.tender-id}}">{{ offering.tender-name }}</a></p>
    <br />
    <!-- fix above to derive tender name from offering, or something better -->
     <p>{{ offering.twelve-words-or-fewerblurb }}</p>
     <p>{{ offering.summary-blurb-300-words }}</p>
     <p>Experience: {{offering.exercise-skill}}</p>
    <br />
     <p>Upcoming dates:</p>
      <p>TBD</p>
   </li>
 {% endfor %}
</div>
