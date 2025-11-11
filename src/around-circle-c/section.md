---
# Feel free to add content and custom Front Matter to this file.

layout: default
---

## Around Circle C

- Parks and Trails
  - Circle C Park on Slaughter (Park with Trails)
  - Circle C Trail (Hiking Trail)
  - Circle C Aquatic Center
- Shopping
  - HEB (Grocery and more)
  - Target (Store with Grocery)
  - Sam's Club (Grocery and more)

[This is the click through for a section](https://webawesome.com/docs/patterns/blog-news/post-list/)

<div class="wa-stack wa-gap-2xl">
  <h2 class="wa-heading-xl">A neighborhood guide</h2>

  <% collections.around_circle_c_content.sort_by { |accc| accc.data.section }
    .group_by { |accc| accc.data.section }.each do |section, accc| %>
    <%= render "acc_section", section: section, accc: accc %>
    <br />
  <% end %>
</div>

