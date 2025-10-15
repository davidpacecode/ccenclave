---
# Feel free to add content and custom Front Matter to this file.

layout: default
---

# Welcome to the Circle C Enclave

<% collections.faqs.each do |faq| %>
  <h2><%= faq.data.category %> - <%= faq.data.title %></h2>
  <p><%= markdownify faq.content %></p>
<% end %>

{:style="text-align:center"}
