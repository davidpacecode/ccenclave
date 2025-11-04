---
# Feel free to add content and custom Front Matter to this file.

layout: default
---

## Around Circle C

- Dining
  - Tropical Smoothie
  - Mangieri's
  - Craiggo's
- Parks and Trails
  - Circle C Park on Slaughter (Park with Trails)
  - Circle C Trail (Hiking Trail)
  - Circle C Aquatic Center
- Leagues
  - Circle C Select Swim Team
  - Circle C Seals
  - Westlake Parkour
- Shopping
 - HEB (Grocery and more)
 - Target (Store with Grocery)
 - Sam's Club (Grocery and more)

[This is the HTML for the category groupings...this page](https://webawesome.com/docs/patterns/blog-news/category-list/)
<br />
[This is the click through for a category](https://webawesome.com/docs/patterns/blog-news/post-list/)

<div class="wa-stack wa-gap-2xl wa-align-items-center">
  <h2 class="wa-heading-xl">A neighborhood guide</h2>

  <% collections.around_circle_c_content.sort_by { |accc| accc.data.category }
    .group_by { |accc| accc.data.category }.each do |category, accc| %>
    <%= render "acc_category", category: category, accc: accc %>
    <br />
  <% end %>
</div>

