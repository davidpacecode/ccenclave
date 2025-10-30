---
layout: page
title: Updates
---

<wa-divider></wa-divider>

<% collections.posts.each do |post| %>
  <%= display_date(post.data.date) %>
  <a href="<%= post.relative_url %>"><%= post.data.title %></a>
  <% if post != collections.posts.last %>
    <wa-divider></wa-divider>
  <% end %>
<% end %>

