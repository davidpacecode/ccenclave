---
# Feel free to add content and custom Front Matter to this file.

layout: default
---

# Welcome to the Circle C Enclave

<% collections.faqs.sort_by { |faq| faq.data.sort_order }.group_by { |faq| faq.data.category }.each do |category, faqs| %>
  <h2><%= category %></h2>
  <% faqs.each do |faq| %>
   <p><%= markdownify faq.content %></p>
  <% end %>
<% end %>

{:style="text-align:center"}
