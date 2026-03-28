---
layout: default
title: blog
description: "My blog posts"
permalink: /blog/
---

{% if site.posts.size > 0 %}

<ul class="blog-posts">
  {% for post in site.posts %}
  <li>
    <span class="post-date">{{ post.date | date: "%B %d, %Y" }}</span>
    <a href="{{ post.url }}">{{ post.title }}</a>
  </li>
  {% endfor %}
</ul>
{% else %}
<p>No posts yet. Check back soon!</p>
{% endif %}
