---
# Feel free to add content and custom Front Matter to this file.

layout: default
---

## Frequently Asked Questions

<br />

<% collections.faqs.sort_by { |faq| faq.data.sort_order }.group_by { |faq| faq.data.section }.each do |section, faqs| %>
  <%= render "faq_section", section: section, faqs: faqs %>
  <br />
<% end %>


