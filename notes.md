    Loadout One: <%= f.collection_select :loadout_id, Loadout.all, :id, :loadout_name, prompt: true%><br>
    <h4>Or create loadout</h4>
    <%= f.fields_for :loadouts, @tactic.loadouts.build do |c| %>
      <%= c.label :remarks %>
      <%= c.text_area :remarks %><br>
    <% end %>