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
    <%= form.label :trials, "Trails Ran:" %>
    <%= form.number_field :trials, class: "form-control" %>
    </div>
    <div class="mb-3">
    <%= form.submit "Submit Data", class: "btn btn-primary" %>
    </div>

<% end %>