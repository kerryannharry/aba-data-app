<h1> Target Data: </h1>

<%= form_with url: targets_path, method: :post do |form|%>
    <div class="mb-3">
    <%= form.label :client_id, "Client First and Last name:" %>
    <%= form.collection_select :client_id, Client.all, :id, :name, prompt:"Select One", class: "form-control" %>
    </div>
    <div class="mb-3">
    <%= form.label :title, "Taret Title:" %>
    <%= form.text_field :Target, class: "form-control" %>
    </div>
    <div class="mb-3">
    <%= form.label :description, "Description:" %>
    <%= form.text_field :description, class: "form-control" %>
    </div>
    <div class="mb-3">
    <%= form.label :protocols, "Protocols:" %>
    <%= form.text_field :protocols, class: "form-control" %>
    </div>
    <div class="mb-3">
    <%= form.label :score_correct, "Correct" %>
    <%= form.check_box :score_correct, class: "form-control" %>
    </div>
    <div class="mb-3">
    <%= form.label :score_incorrect, "Incorrect" %>
    <%= form.check_box :score_incorrect, class: "form-control" %>
    </div>
    <div class="mb-3">
    <%= form.label :verbal_prompt, "Verbal Prompt" %>
    <%= form.check_box :verbal_prompt, class: "form-control" %>
    </div>
    <div class="mb-3">
    <%= form.label :partial_verbal_prompt, "Partial Verbal Prompt" %>
    <%= form.check_box :partial_verbal_prompt, class: "form-control" %>
    </div>
    <div class="mb-3">
    <%= form.label :full_physical_prompt, "Full Physical Prompt" %>
    <%= form.check_box :full_physical_prompt, class: "form-control" %>
    </div>
    <div class="mb-3">
    <%= form.label :partial_physical_prompt, "Partial Physical Prompt" %>
    <%= form.check_box :partial_physical_prompt, class: "form-control" %>
    </div>
    <div class="mb-3">
    <%= form.label :gesture_prompt, "Gesture Prompt" %>
    <%= form.check_box :gesture_prompt, class: "form-control" %>
    </div>
    <div class="mb-3">
    <%= form.label :visual_prompt, "Visual Prompt" %>
    <%= form.check_box :visual_prompt, class: "form-control" %>
    </div>
    <div class="mb-3">
    <%= form.label :modeling_prompt, "Modeling Prompt" %>
    <%= form.check_box :modeling_prompt, class: "form-control" %>
    </div>
    <%= form.label :trials, "Trails Ran:" %>
    <%= form.number_field :trials, class: "form-control" %>
    </div>
    <div class="mb-3">
    <%= form.submit "Submit Data", class: "btn btn-primary" %>
    </div>

<% end %>