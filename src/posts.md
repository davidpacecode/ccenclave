---
layout: page
title: Enclave Blog
---

<wa-divider></wa-divider>

<wa-stack>
  <% collections.posts.each do |post| %>
    <div><strong><%= standardize_date(post.data.date) %></strong></div>
    <div><span class="wa-heading-m"><%= post.data.title %></span></div>
    <div><span class="wa-body-m"><%= post.content %></span></div>
    <div><a href="<%= post.relative_url %>" class="wa-heading-m">Continue reading -></a></div>
    <% if post != collections.posts.last %>
      <wa-divider></wa-divider>
    <% end %>
  <% end %>
</wa-stack>
